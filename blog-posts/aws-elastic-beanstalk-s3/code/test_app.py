"""Optional tests for PhotoBook. They use moto, a fake S3, so no AWS account is needed.

Run:  pip install -r requirements-dev.txt
      python -m unittest -v test_app.py
"""
import importlib
import io
import os
import subprocess
import sys
import unittest
from urllib.parse import urlparse

import boto3
import requests
from moto import mock_aws

BUCKET = "photobook-uploads-test"
REGION = "eu-west-2"
HERE = os.path.dirname(os.path.abspath(__file__))

# Small but real file headers for each type.
JPEG = b"\xff\xd8\xff\xe0" + b"\x00" * 200
PNG = b"\x89PNG\r\n\x1a\n" + b"\x00" * 200
WEBP = b"RIFF\x00\x00\x00\x00WEBPVP8 " + b"\x00" * 200


class PhotoBookTest(unittest.TestCase):
    def setUp(self):
        # Fake credentials, so no real AWS call can happen.
        os.environ.update({
            "AWS_ACCESS_KEY_ID": "testing",
            "AWS_SECRET_ACCESS_KEY": "testing",
            "AWS_SESSION_TOKEN": "testing",
            "AWS_REGION": REGION,
            "S3_BUCKET": BUCKET,
        })
        self.mock = mock_aws()
        self.mock.start()
        self.s3 = boto3.client("s3", region_name=REGION)
        self.s3.create_bucket(
            Bucket=BUCKET,
            CreateBucketConfiguration={"LocationConstraint": REGION},
        )
        import app as app_module
        self.app_module = importlib.reload(app_module)  # read the env vars again
        self.client = self.app_module.app.test_client()

    def tearDown(self):
        self.mock.stop()

    def upload(self, data, filename="cat.jpg"):
        return self.client.post(
            "/upload",
            data={"photo": (io.BytesIO(data), filename)},
            content_type="multipart/form-data",
        )

    def keys(self):
        response = self.s3.list_objects_v2(Bucket=BUCKET)
        return [item["Key"] for item in response.get("Contents", [])]

    def test_home_page_renders(self):
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"PhotoBook", response.data)
        self.assertIn(b"No photos yet", response.data)

    def test_valid_uploads_are_stored_with_content_type(self):
        for data, name, ctype, ext in [
            (JPEG, "a.jpg", "image/jpeg", ".jpg"),
            (PNG, "b.png", "image/png", ".png"),
            (WEBP, "c.webp", "image/webp", ".webp"),
        ]:
            response = self.upload(data, name)
            self.assertEqual(response.status_code, 302)
            self.assertIn("uploaded=1", response.headers["Location"])
        keys = self.keys()
        self.assertEqual(len(keys), 3)
        for key in keys:
            self.assertTrue(key.startswith("photos/"))
            head = self.s3.head_object(Bucket=BUCKET, Key=key)
            ext = key.rsplit(".", 1)[1]
            expected = {"jpg": "image/jpeg", "png": "image/png", "webp": "image/webp"}[ext]
            self.assertEqual(head["ContentType"], expected)

    def test_bad_type_is_rejected(self):
        response = self.upload(b"GIF89a" + b"\x00" * 100, "anim.gif")
        self.assertEqual(response.status_code, 400)
        self.assertIn(b"Only JPEG, PNG and WebP", response.data)
        # A text file with a .jpg name is also rejected.
        response = self.upload(b"hello, I am not a photo", "fake.jpg")
        self.assertEqual(response.status_code, 400)
        self.assertEqual(self.keys(), [])

    def test_file_over_5_mb_is_rejected(self):
        just_over = JPEG + b"\x00" * (5 * 1024 * 1024)  # a little more than 5 MB
        response = self.upload(just_over)
        self.assertEqual(response.status_code, 400)
        self.assertIn(b"too big", response.data)
        # Much bigger files are stopped by MAX_CONTENT_LENGTH with 413.
        huge = JPEG + b"\x00" * (8 * 1024 * 1024)
        response = self.upload(huge)
        self.assertEqual(response.status_code, 413)
        self.assertIn(b"too big", response.data)
        self.assertEqual(self.keys(), [])

    def test_missing_file_is_rejected(self):
        response = self.client.post("/upload", data={}, content_type="multipart/form-data")
        self.assertEqual(response.status_code, 400)

    def test_listing_shows_presigned_get_url(self):
        self.upload(PNG, "b.png")
        key = self.keys()[0]
        page = self.client.get("/").get_data(as_text=True)
        self.assertIn(key, page)
        self.assertIn("X-Amz-Signature=", page)
        # Find the link in the page and download the photo with it.
        start = page.index("https://" + BUCKET)
        url = page[start:page.index('"', start)].replace("&amp;", "&")
        parsed = urlparse(url)
        self.assertEqual(parsed.netloc, f"{BUCKET}.s3.{REGION}.amazonaws.com")
        self.assertIn("X-Amz-Expires=3600", parsed.query)
        response = requests.get(url)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.content, PNG)

    def test_setup_message_without_bucket(self):
        os.environ["S3_BUCKET"] = ""
        module = importlib.reload(self.app_module)
        response = module.app.test_client().get("/")
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"Setup needed", response.data)


class GunicornTest(unittest.TestCase):
    def test_gunicorn_can_load_the_app(self):
        env = dict(os.environ, S3_BUCKET=BUCKET, AWS_REGION=REGION)
        result = subprocess.run(
            [sys.executable, "-m", "gunicorn", "--check-config", "app:app"],
            cwd=HERE, env=env, capture_output=True, text=True,
        )
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)


if __name__ == "__main__":
    unittest.main(verbosity=2)
