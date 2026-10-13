require "fileutils"
require "securerandom"

class EditorController < ApplicationController
  # No SVG: an SVG file can carry JavaScript, and uploads are served from our own site.
  ALLOWED_EXTENSIONS = %w[.png .jpg .jpeg .gif .webp].freeze
  ALLOWED_CONTENT_TYPES = %w[image/png image/jpeg image/gif image/webp].freeze
  MAX_UPLOAD_SIZE = 5.megabytes

  # Anyone can use the Editor. Publishing pages and saving images need an account (checked in each action), not a plan.

  def show
    @editor_images = user_signed_in? ? current_user.editor_images.recent : EditorImage.none
    @published_pages = user_signed_in? ? current_user.published_pages.order(updated_at: :desc) : PublishedPage.none
  end

  def publish
    unless user_signed_in?
      return render json: { error: "Please sign in to publish pages." }, status: :unauthorized
    end

    attrs = normalized_page_attributes
    page = current_user.published_pages.create!(attrs.merge(slug: unique_slug(attrs[:slug])))

    render json: published_page_payload(page), status: :created
  rescue ActiveRecord::RecordInvalid => error
    render json: { error: error.record.errors.full_messages.to_sentence }, status: :unprocessable_entity
  end

  def update_page
    unless user_signed_in?
      return render json: { error: "Please sign in to update published pages." }, status: :unauthorized
    end

    page = current_user.published_pages.find(params[:id])
    attrs = normalized_page_attributes
    page.update!(attrs.merge(slug: unique_slug(attrs[:slug], current_page: page)))

    render json: published_page_payload(page)
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Published page not found." }, status: :not_found
  rescue ActiveRecord::RecordInvalid => error
    render json: { error: error.record.errors.full_messages.to_sentence }, status: :unprocessable_entity
  end

  def upload
    unless user_signed_in?
      return render json: { error: "Please sign in to save uploaded images." }, status: :unauthorized
    end

    image = params[:image]

    unless image.present?
      return render json: { error: "Please choose an image to upload." }, status: :unprocessable_entity
    end

    extension = File.extname(image.original_filename.to_s).downcase
    unless ALLOWED_EXTENSIONS.include?(extension) && allowed_content_type?(image.content_type)
      return render json: { error: "Only PNG, JPG, JPEG, GIF and WebP images are allowed." }, status: :unprocessable_entity
    end

    if image.size > MAX_UPLOAD_SIZE
      return render json: { error: "Image must be smaller than 5 MB." }, status: :unprocessable_entity
    end

    filename = "#{SecureRandom.hex(16)}#{extension}"
    content_type = image.content_type.to_s.split(";").first.presence || "application/octet-stream"
    url = UploadStore.store(filename, image.read, content_type)   # Cloudflare R2 in production, disk locally

    editor_image = current_user.editor_images.create!(
      original_filename: image.original_filename,
      stored_filename: filename,
      content_type: content_type,
      byte_size: image.size,
      url: url
    )

    render json: editor_image_payload(editor_image)
  rescue ActiveRecord::RecordInvalid => error
    UploadStore.delete(filename) if defined?(filename) && filename.present?
    render json: { error: error.record.errors.full_messages.to_sentence }, status: :unprocessable_entity
  end

  def destroy_upload
    unless user_signed_in?
      return render json: { error: "Please sign in to delete uploaded images." }, status: :unauthorized
    end

    editor_image = current_user.editor_images.find(params[:id])
    editor_image.destroy!
    UploadStore.delete(editor_image.stored_filename)

    render json: { id: editor_image.id, message: "Image deleted." }
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Image not found." }, status: :not_found
  end

  private

  def page_params
    params.require(:page).permit(:title, :slug, :html_content, :css_content, :js_content, :is_public)
  end

  def normalized_page_attributes
    permitted = page_params
    title = permitted[:title].to_s.strip.presence || "Untitled CoffeeBean AI Page"
    html = permitted[:html_content].to_s

    {
      title: title,
      slug: permitted[:slug].to_s.parameterize.presence || title.parameterize.presence || "ai-academy-page",
      html_content: html,
      css_content: permitted[:css_content].to_s,
      js_content: permitted[:js_content].to_s,
      is_public: ActiveModel::Type::Boolean.new.cast(permitted[:is_public]),
      image_references: extract_image_references(html).to_json
    }
  end

  def unique_slug(base_slug, current_page: nil)
    base = base_slug.to_s.parameterize.presence || "ai-academy-page"
    slug = base
    counter = 2

    while PublishedPage.where(slug: slug).where.not(id: current_page&.id).exists?
      slug = "#{base}-#{counter}"
      counter += 1
    end

    slug
  end

  def extract_image_references(html)
    # Local (/uploads/editor/…) and R2 (https://…/uploads/editor/…) upload URLs
    html.to_s.scan(%r{(?:src=["'])((?:https?://[^"'/]+)?/uploads/editor/[^"']+)}).flatten.uniq
  end

  def allowed_content_type?(content_type)
    normalized_type = content_type.to_s.split(";").first
    normalized_type.blank? || ALLOWED_CONTENT_TYPES.include?(normalized_type)
  end

  def editor_image_payload(editor_image)
    {
      id: editor_image.id,
      filename: editor_image.original_filename,
      url: editor_image.url,
      tag: %(<img src="#{editor_image.url}" alt="#{ERB::Util.html_escape(editor_image.original_filename)}">)
    }
  end

  def published_page_payload(page)
    {
      id: page.id,
      title: page.title,
      slug: page.slug,
      is_public: page.is_public,
      public_url: published_page_url(page.slug),
      message: "Published successfully"
    }
  end
end
