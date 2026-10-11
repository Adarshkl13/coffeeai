"""Tests for PhotoBook. They use moto, so no real AWS account is needed.

Run:  python -m unittest -v test_app.py
"""
import hashlib
import hmac
import importlib
import os
import subprocess
import sys
import unittest
from urllib.parse import parse_qsl, quote, urlsplit

import requests
from moto import mock_aws

BUCKET = "photobook-uploads-test"
REGION = "eu-west-1"
os.environ.update(
    S3_BUCKET=BUCKET,
    AWS_REGION=REGION,
    AWS_ACCESS_KEY_ID="testing",
    AWS_SECRET_ACCESS_KEY="testing",
)

JPEG = b"\xff\xd8\xff\xe0" + b"0" * 1000
HERE = os.path.dirname(os.path.abspath(__file__))


def _hmac(key, msg):
    return hmac.new(key, msg.encode(), hashlib.sha256).digest()


def s3_signature_ok(url, method, headers, secret):
    """Check a presigned URL the same way S3 does (SigV4 query auth).
    moto does not check presigned signatures, so we check them here."""
    parts = urlsplit(url)
    params = dict(parse_qsl(parts.query, keep_blank_values=True))
    signature = params.pop("X-Amz-Signature")
    signed = params["X-Amz-SignedHeaders"].split(";")
    all_headers = {k.lower(): v.strip() for k, v in headers.items()}
    all_headers["host"] = parts.netloc
    canonical_query = "&".join(
        f"{quote(k, safe='-_.~')}={quote(v, safe='-_.~')}"
        for k, v in sorted(params.items())
    )
    canonical_headers = "".join(f"{h}:{all_headers.get(h, '')}\n" for h in signed)
    canonical_request = "\n".join(
        [method, parts.path, canonical_query, canonical_headers,
         ";".join(signed), "UNSIGNED-PAYLOAD"]
    )
    amz_date = params["X-Amz-Date"]
    scope = params["X-Amz-Credential"].split("/", 1)[1]
    string_to_sign = "\n".join(
        ["AWS4-HMAC-SHA256", amz_date, scope,
         hashlib.sha256(canonical_request.encode()).hexdigest()]
    )
    date, region, service, _ = scope.split("/")
    key = _hmac(("AWS4" + secret).encode(), date)
    for part in (region, service, "aws4_request"):
        key = _hmac(key, part)
    expected = hmac.new(key, string_to_sign.encode(), hashlib.sha256).hexdigest()
    return hmac.compare_digest(expected, signature)


class PhotoBookTest(unittest.TestCase):
    def setUp(self):
        self.mock = mock_aws()
        self.mock.start()
        import app as app_module
        self.app_module = importlib.reload(app_module)  # new client inside the mock
        self.s3 = self.app_module.s3
        self.s3.create_bucket(
            Bucket=BUCKET, CreateBucketConfiguration={"LocationConstraint": REGION}
        )
        self.client = self.app_module.app.test_client()
        self.secret = self.s3._request_signer._credentials.get_frozen_credentials().secret_key

    def tearDown(self):
        self.mock.stop()

    def put_to_s3(self, url, body, content_type):
        """Act like the browser: PUT the file to S3 with the presigned URL."""
        headers = {"Content-Type": content_type}
        if not s3_signature_ok(url, "PUT", headers, self.secret):
            return 403, "SignatureDoesNotMatch"
        response = requests.put(url, data=body, headers=headers)
        return response.status_code, response.text

    def presign(self, content_type="image/jpeg", size=len(JPEG)):
        return self.client.post(
            "/api/presign", json={"content_type": content_type, "size": size}
        )

    def upload(self, body=JPEG, content_type="image/jpeg"):
        data = self.presign(content_type, len(body)).get_json()
        status, _ = self.put_to_s3(data["url"], body, content_type)
        self.assertEqual(status, 200)
        return data["key"]

    def test_home_page_renders(self):
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"PhotoBook", response.data)
        self.assertIn(b"No photos yet", response.data)

    def test_valid_upload_is_stored_with_content_type(self):
        key = self.upload()
        self.assertRegex(key, r"^photos/[0-9a-f]{32}\.jpg$")
        confirm = self.client.post("/api/confirm", json={"key": key})
        self.assertEqual(confirm.status_code, 200)
        head = self.s3.head_object(Bucket=BUCKET, Key=key)
        self.assertEqual(head["ContentType"], "image/jpeg")
        self.assertEqual(head["ContentLength"], len(JPEG))

    def test_presigned_put_needs_same_content_type(self):
        data = self.presign("image/png").get_json()
        self.assertIn("content-type", data["url"].lower())
        status, _ = self.put_to_s3(data["url"], JPEG, "image/jpeg")  # wrong type
        self.assertEqual(status, 403)
        status, _ = self.put_to_s3(data["url"], JPEG, "image/png")  # same type
        self.assertEqual(status, 200)

    def test_bad_types_are_rejected(self):
        for content_type in ("image/gif", "text/html", "application/pdf", ""):
            response = self.presign(content_type)
            self.assertEqual(response.status_code, 400, content_type)

    def test_large_files_are_rejected(self):
        response = self.presign("image/jpeg", 5 * 1024 * 1024 + 1)
        self.assertEqual(response.status_code, 400)

    def test_confirm_deletes_file_that_is_too_big(self):
        # A client lies about the size, then uploads 6 MB.
        data = self.presign("image/jpeg", 1000).get_json()
        big = b"0" * (6 * 1024 * 1024)
        status, _ = self.put_to_s3(data["url"], big, "image/jpeg")
        self.assertEqual(status, 200)
        response = self.client.post("/api/confirm", json={"key": data["key"]})
        self.assertEqual(response.status_code, 400)
        listing = self.s3.list_objects_v2(Bucket=BUCKET, Prefix="photos/")
        self.assertEqual(listing.get("KeyCount", 0), 0)

    def test_confirm_rejects_bad_keys(self):
        for key in ("../secret.txt", "photos/abc.jpg", "other/" + "a" * 32 + ".jpg"):
            response = self.client.post("/api/confirm", json={"key": key})
            self.assertEqual(response.status_code, 400, key)

    def test_listing_shows_photo_with_presigned_get_url(self):
        key = self.upload()
        html = self.client.get("/").get_data(as_text=True)
        self.assertIn(key, html)
        self.assertIn("X-Amz-Signature=", html)
        self.assertIn(f"https://{BUCKET}.s3.{REGION}.amazonaws.com/{key}", html)
        # The GET link really downloads the photo.
        url = self.s3.generate_presigned_url(
            "get_object", Params={"Bucket": BUCKET, "Key": key}, ExpiresIn=60
        )
        self.assertTrue(s3_signature_ok(url, "GET", {}, self.secret))
        self.assertEqual(requests.get(url).content, JPEG)


class GunicornTest(unittest.TestCase):
    def test_gunicorn_can_load_the_app(self):
        result = subprocess.run(
            [sys.executable, "-m", "gunicorn", "--check-config", "app:app"],
            cwd=HERE, capture_output=True, text=True, env=dict(os.environ, PORT="8000"),
        )
        self.assertEqual(result.returncode, 0, result.stderr)


if __name__ == "__main__":
    unittest.main(verbosity=2)
