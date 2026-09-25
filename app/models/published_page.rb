class PublishedPage < ApplicationRecord
  belongs_to :user

  validates :title, :slug, :html_content, :css_content, :js_content, presence: true
  validates :slug, uniqueness: true,
                   format: { with: /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/, message: "can only use lowercase letters, numbers, and hyphens" }

  scope :publicly_visible, -> { where(is_public: true) }

  before_validation :normalize_slug

  def image_reference_list
    JSON.parse(image_references.presence || "[]")
  rescue JSON::ParserError
    []
  end

  private

  def normalize_slug
    self.slug = slug.to_s.parameterize
  end
end
