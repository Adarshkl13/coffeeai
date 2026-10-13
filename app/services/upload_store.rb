require "fileutils"

# Where Editor image uploads are kept.
#   :r2    Cloudflare R2 (production, or EDITOR_UPLOADS=r2): Heroku's own disk is wiped every day.
#   :disk  public/uploads/editor (development and tests).
# R2 keys come from Rails credentials r2: { access_key_id, secret_access_key, endpoint, bucket };
# public URLs use the same base as the course podcasts (CoursePodcast.base_url).
module UploadStore
  PREFIX = "uploads/editor/"

  def self.backend
    want_r2 = ENV["EDITOR_UPLOADS"].presence ? ENV["EDITOR_UPLOADS"] == "r2" : Rails.env.production?
    want_r2 && r2_credentials ? :r2 : :disk
  end

  # Saves the bytes and returns the public URL.
  def self.store(filename, bytes, content_type)
    if backend == :r2
      r2.put_object(bucket: r2_credentials[:bucket], key: PREFIX + filename, body: bytes, content_type: content_type,
                    cache_control: "public, max-age=31536000, immutable")
      "#{CoursePodcast.base_url}/#{PREFIX}#{filename}"
    else
      dir = Rails.root.join("public", PREFIX)
      FileUtils.mkdir_p(dir)
      File.binwrite(dir.join(filename), bytes)
      "/#{PREFIX}#{filename}"
    end
  end

  # Deletes a stored upload by its file name (never a path from the user).
  def self.delete(filename)
    name = File.basename(filename.to_s)
    return if name.blank?
    if backend == :r2
      r2.delete_object(bucket: r2_credentials[:bucket], key: PREFIX + name)
    else
      path = Rails.root.join("public", PREFIX, name)
      File.delete(path) if File.exist?(path)
    end
  rescue Aws::S3::Errors::ServiceError => e
    Rails.logger.warn("[UploadStore] could not delete #{name}: #{e.message}")
  end

  def self.r2_credentials
    c = Rails.application.credentials.r2
    c if c && %i[access_key_id secret_access_key endpoint bucket].all? { |k| c[k].present? }
  end

  def self.r2
    require "aws-sdk-s3"
    @r2 ||= Aws::S3::Client.new(access_key_id: r2_credentials[:access_key_id], secret_access_key: r2_credentials[:secret_access_key],
                                endpoint: r2_credentials[:endpoint], region: "auto", force_path_style: true)
  end
end
