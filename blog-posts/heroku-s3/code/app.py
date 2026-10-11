import os
import re
import uuid

import boto3
from botocore.config import Config
from botocore.exceptions import ClientError
from flask import Flask, jsonify, render_template, request

# Settings come from environment variables (Heroku config vars).
# Never write keys or bucket names in your code.
S3_BUCKET = os.environ.get("S3_BUCKET", "")
REGION = os.environ.get("AWS_REGION", "eu-west-1")

MAX_BYTES = 5 * 1024 * 1024  # 5 MB
ALLOWED_TYPES = {
    "image/jpeg": "jpg",
    "image/png": "png",
    "image/webp": "webp",
}
KEY_PATTERN = re.compile(r"^photos/[0-9a-f]{32}\.(jpg|png|webp)$")

app = Flask(__name__)
# The photo never passes through Flask, only small JSON messages.
app.config["MAX_CONTENT_LENGTH"] = 16 * 1024

# A regional endpoint and Signature Version 4 make presigned URLs
# work in every region and with browser CORS requests.
s3 = boto3.client(
    "s3",
    region_name=REGION,
    endpoint_url=f"https://s3.{REGION}.amazonaws.com",
    config=Config(signature_version="s3v4", s3={"addressing_style": "virtual"}),
)


@app.get("/")
def index():
    photos = []
    response = s3.list_objects_v2(Bucket=S3_BUCKET, Prefix="photos/", MaxKeys=100)
    objects = sorted(
        response.get("Contents", []),
        key=lambda obj: obj["LastModified"],
        reverse=True,
    )
    for obj in objects:
        url = s3.generate_presigned_url(
            "get_object",
            Params={"Bucket": S3_BUCKET, "Key": obj["Key"]},
            ExpiresIn=3600,  # the link works for 1 hour
        )
        photos.append({"key": obj["Key"], "url": url})
    return render_template("index.html", photos=photos, max_bytes=MAX_BYTES)


@app.post("/api/presign")
def presign():
    data = request.get_json(silent=True) or {}
    content_type = data.get("content_type", "")
    size = data.get("size", 0)

    if content_type not in ALLOWED_TYPES:
        return jsonify(error="Only JPEG, PNG and WebP images are allowed."), 400
    if not isinstance(size, int) or size <= 0 or size > MAX_BYTES:
        return jsonify(error="The file must be smaller than 5 MB."), 400

    key = f"photos/{uuid.uuid4().hex}.{ALLOWED_TYPES[content_type]}"
    url = s3.generate_presigned_url(
        "put_object",
        Params={"Bucket": S3_BUCKET, "Key": key, "ContentType": content_type},
        ExpiresIn=300,  # the browser has 5 minutes to start the upload
    )
    return jsonify(url=url, key=key)


@app.post("/api/confirm")
def confirm():
    data = request.get_json(silent=True) or {}
    key = data.get("key", "")
    if not KEY_PATTERN.match(key):
        return jsonify(error="Invalid key."), 400

    try:
        head = s3.head_object(Bucket=S3_BUCKET, Key=key)
    except ClientError:
        return jsonify(error="Upload not found."), 404

    # The browser can lie, so check the real file in S3.
    if head["ContentLength"] > MAX_BYTES or head["ContentType"] not in ALLOWED_TYPES:
        s3.delete_object(Bucket=S3_BUCKET, Key=key)
        return jsonify(error="File rejected: wrong type or larger than 5 MB."), 400

    return jsonify(ok=True, key=key)


if __name__ == "__main__":
    app.run(debug=True, port=8000)
