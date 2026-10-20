# A blog post stored as Markdown in blog-posts/<folder>/post.md, with its images in
# blog-posts/<folder>/images/. The same files can be published elsewhere (Medium, dev.to).
# Posts are listed in POSTS; there is no database table.
class BlogPost
  ROOT = Rails.root.join("blog-posts")

  POSTS = [
    { slug: "deploy-flask-aws-elastic-beanstalk-s3", folder: "aws-elastic-beanstalk-s3",
      tag: "AWS", icon: "☁️", color: "#ff9900", published_on: Date.new(2026, 9, 27) },
    { slug: "deploy-flask-heroku-s3", folder: "heroku-s3",
      tag: "Heroku", icon: "🚀", color: "#7958d2", published_on: Date.new(2026, 9, 27) },
    # AI guides (2026-10-19): one small SVG cover each, no large images.
    { slug: "what-is-rag", folder: "what-is-rag", cover: "cover.svg",
      tag: "RAG", icon: "🔎", color: "#5b4bdb", published_on: Date.new(2026, 10, 19) },
    { slug: "what-is-a-vector-database", folder: "what-is-a-vector-database", cover: "cover.svg",
      tag: "Vector databases", icon: "🧭", color: "#6366f1", published_on: Date.new(2026, 10, 19) },
    { slug: "build-your-first-ai-agent", folder: "build-your-first-ai-agent", cover: "cover.svg",
      tag: "AI agents", icon: "🤖", color: "#7c3aed", published_on: Date.new(2026, 10, 19) },
    { slug: "how-do-llms-work", folder: "how-do-llms-work", cover: "cover.svg",
      tag: "LLMs", icon: "🧠", color: "#4f46e5", published_on: Date.new(2026, 10, 19) },
    { slug: "ai-vs-machine-learning-vs-deep-learning", folder: "ai-vs-machine-learning-vs-deep-learning", cover: "cover.svg",
      tag: "AI basics", icon: "🎯", color: "#0e7490", published_on: Date.new(2026, 10, 19) },
    { slug: "prompt-engineering-tips", folder: "prompt-engineering-tips", cover: "cover.svg",
      tag: "Prompts", icon: "✍️", color: "#d97706", published_on: Date.new(2026, 10, 19) },
    { slug: "ai-for-doctors", folder: "ai-for-doctors", cover: "cover.svg",
      tag: "Healthcare", icon: "🩺", color: "#e11d48", published_on: Date.new(2026, 10, 19) },
    { slug: "ai-for-lawyers", folder: "ai-for-lawyers", cover: "cover.svg",
      tag: "Legal", icon: "⚖️", color: "#4338ca", published_on: Date.new(2026, 10, 19) },
    { slug: "ai-in-software-testing", folder: "ai-in-software-testing", cover: "cover.svg",
      tag: "Testing", icon: "🧪", color: "#059669", published_on: Date.new(2026, 10, 19) },
    { slug: "how-ai-image-generators-work", folder: "how-ai-image-generators-work", cover: "cover.svg",
      tag: "AI images", icon: "🎨", color: "#db2777", published_on: Date.new(2026, 10, 19) }
  ].freeze

  IMAGE_NAME = /\A[\w.-]+\.(png|jpe?g|webp|gif|svg)\z/

  attr_reader :slug, :tag, :icon, :color, :published_on

  # Newest first.
  def self.all = POSTS.map { |attrs| new(**attrs) }.select(&:exists?).sort_by { |p| -p.published_on.jd }

  def self.find(slug)
    attrs = POSTS.find { |p| p[:slug] == slug.to_s }
    post = attrs && new(**attrs)
    raise ActiveRecord::RecordNotFound, "No blog post #{slug}" unless post&.exists?
    post
  end

  def initialize(slug:, folder:, tag:, icon:, color:, published_on:, cover: "01-architecture.png")
    @slug, @folder, @tag, @icon, @color, @published_on, @cover = slug, folder, tag, icon, color, published_on, cover
  end

  def exists? = markdown_path.file?

  def title = markdown[/\A#\s+(.+)$/, 1].to_s.strip

  # The italic line right under the title.
  def subtitle = markdown[/\A#[^\n]*\n+\*([^*\n]+)\*/, 1].to_s.strip

  def cover_image = @cover

  # Questions and answers under "## Frequently asked questions" (### question, then its paragraphs),
  # for the FAQ data Google reads.
  def faqs
    section = markdown[/^## Frequently asked questions\n(.*?)(?=^## |\z)/m, 1].to_s
    section.split(/^### /).drop(1).filter_map do |chunk|
      q, a = chunk.split("\n", 2)
      answer = a.to_s.gsub(/\[([^\]]+)\]\([^)]+\)/, '\\1').gsub(/[*`_]/, "").squish
      { question: q.strip, answer: answer } if q.to_s.strip.end_with?("?") && answer.present?
    end
  end

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
