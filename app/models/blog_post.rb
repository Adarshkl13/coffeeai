# A blog post stored as Markdown in blog-posts/<folder>/post.md, with its images in
# blog-posts/<folder>/images/. The same files can be published elsewhere (Medium, dev.to).
# Posts are listed in POSTS; there is no database table.
class BlogPost
  ROOT = Rails.root.join("blog-posts")

  POSTS = [
    { slug: "deploy-flask-aws-elastic-beanstalk-s3", folder: "aws-elastic-beanstalk-s3",
      tag: "AWS", icon: "☁️", color: "#ff9900", published_on: Date.new(2026, 9, 27) },
    { slug: "deploy-flask-heroku-s3", folder: "heroku-s3",
      tag: "Heroku", icon: "🚀", color: "#7958d2", published_on: Date.new(2026, 9, 27) }
  ].freeze

  IMAGE_NAME = /\A[\w.-]+\.(png|jpe?g|webp|gif|svg)\z/

  attr_reader :slug, :tag, :icon, :color, :published_on

  def self.all = POSTS.map { |attrs| new(**attrs) }.select(&:exists?)

  def self.find(slug)
    attrs = POSTS.find { |p| p[:slug] == slug.to_s }
    post = attrs && new(**attrs)
    raise ActiveRecord::RecordNotFound, "No blog post #{slug}" unless post&.exists?
    post
  end

  def initialize(slug:, folder:, tag:, icon:, color:, published_on:)
    @slug, @folder, @tag, @icon, @color, @published_on = slug, folder, tag, icon, color, published_on
  end

  def exists? = markdown_path.file?

  def title = markdown[/\A#\s+(.+)$/, 1].to_s.strip

  # The italic line right under the title.
  def subtitle = markdown[/\A#[^\n]*\n+\*([^*\n]+)\*/, 1].to_s.strip

  def cover_image = "01-architecture.png"

  # Prose only: readers skim code blocks.
  def reading_minutes = [(markdown.gsub(/^```.*?^```/m, "").split.size / 200.0).ceil, 1].max

  # The article HTML without the title and subtitle (the page header shows those).
  # Relative image paths are pointed at BlogsController#image.
  def body_html
    md = markdown.sub(/\A#[^\n]*\n+(\*[^*\n]+\*\n+)?/, "")
    html = Commonmarker.to_html(md, options: { render: { unsafe: true } }, plugins: { syntax_highlighter: nil })
    html.gsub(/src="images\/([^"]+)"/) do
      name = Regexp.last_match(1)
      name.match?(IMAGE_NAME) ? %(src="#{image_url_path(name)}" loading="lazy") : %(src="")
    end
  end

  def image_file(name)
    return nil unless name.to_s.match?(IMAGE_NAME)
    path = ROOT.join(@folder, "images", name)
    path.file? ? path : nil
  end

  def image_url_path(name) = Rails.application.routes.url_helpers.blog_image_path(slug, name)

  def to_param = slug

  private

  def markdown_path = ROOT.join(@folder, "post.md")

  def markdown = @markdown ||= markdown_path.read
end
