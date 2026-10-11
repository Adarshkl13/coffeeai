import os
import uuid

import boto3
from botocore.config import Config
from flask import Flask, redirect, render_template, request, url_for

# Settings come from environment variables. No secrets in the code.
BUCKET = os.environ.get("S3_BUCKET", "")
REGION = os.environ.get("AWS_REGION", "eu-west-2")

MAX_PHOTO_BYTES = 5 * 1024 * 1024  # 5 MB
LINK_SECONDS = 3600  # presigned links work for 1 hour

# The first bytes of a file tell us its real type.
# We map each allowed type to its file extension.
ALLOWED_TYPES = {
    "image/jpeg": "jpg",
    "image/png": "png",
    "image/webp": "webp",
}

app = Flask(__name__)
# Flask stops any request body bigger than this with "413".
# It is a bit more than 5 MB, because the form adds some extra bytes.
app.config["MAX_CONTENT_LENGTH"] = MAX_PHOTO_BYTES + 512 * 1024

# boto3 finds credentials by itself:
# on your laptop from your AWS profile, on Elastic Beanstalk from the instance role.
s3 = boto3.client(
    "s3",
    region_name=REGION,
    endpoint_url=f"https://s3.{REGION}.amazonaws.com",
    config=Config(signature_version="s3v4", s3={"addressing_style": "virtual"}),
)


def detect_type(head):
    """Return the image type from the first bytes of the file, or None."""
    if head.startswith(b"\xff\xd8\xff"):
        return "image/jpeg"
    if head.startswith(b"\x89PNG\r\n\x1a\n"):
        return "image/png"
    if head[:4] == b"RIFF" and head[8:12] == b"WEBP":
        return "image/webp"
    return None


def list_photos():
    """Return the newest photos, each with a temporary link."""
    response = s3.list_objects_v2(Bucket=BUCKET, Prefix="photos/", MaxKeys=1000)
    items = sorted(
        response.get("Contents", []),
        key=lambda item: item["LastModified"],
        reverse=True,
    )
    photos = []
    for item in items[:50]:
        link = s3.generate_presigned_url(
            "get_object",
            Params={"Bucket": BUCKET, "Key": item["Key"]},
            ExpiresIn=LINK_SECONDS,
        )
        photos.append({"key": item["Key"], "url": link})
    return photos


def show_page(error=None, status=200):
    if not BUCKET:
        return render_template("index.html", setup_needed=True, photos=[]), status
    uploaded = request.args.get("uploaded") == "1"
    return render_template(
        "index.html",
        photos=list_photos(),
        error=error,
        uploaded=uploaded,
    ), status


@app.get("/")
def index():
    return show_page()


@app.post("/upload")
def upload():
    if not BUCKET:
        return show_page()

    photo = request.files.get("photo")
    if photo is None or photo.filename == "":
        return show_page("Please choose a photo first.", 400)

    # Check the size without reading the whole file into memory.
    photo.stream.seek(0, os.SEEK_END)
    size = photo.stream.tell()
    photo.stream.seek(0)
    if size > MAX_PHOTO_BYTES:
        return show_page("The photo is too big. The limit is 5 MB.", 400)

    # Check the real type from the first 12 bytes. Do not trust the file name.
    content_type = detect_type(photo.stream.read(12))
    photo.stream.seek(0)
    if content_type is None:
        return show_page("Only JPEG, PNG and WebP photos are allowed.", 400)

    # A random, unique name. The user's file name is never used as the key.
    key = f"photos/{uuid.uuid4()}.{ALLOWED_TYPES[content_type]}"
    s3.upload_fileobj(
        photo.stream,
        BUCKET,
        key,
        ExtraArgs={"ContentType": content_type},
    )
    # print() goes to the app log (web.stdout.log on Elastic Beanstalk).
    print(f"Uploaded {key} ({size} bytes)", flush=True)
    return redirect(url_for("index", uploaded="1"))


@app.errorhandler(413)
def too_large(error):
    return show_page("The photo is too big. The limit is 5 MB.", 413)


if __name__ == "__main__":
    app.run(debug=True)
