# Course podcasts stored on Cloudflare R2 (config/podcasts.yml): episodes per course, each in one or more languages.
class CoursePodcast
  LANGUAGES = {
    "en" => ["English", "English"], "hi" => ["Hindi", "हिन्दी"], "kn" => ["Kannada", "ಕನ್ನಡ"],
    "ta" => ["Tamil", "தமிழ்"], "te" => ["Telugu", "తెలుగు"], "ml" => ["Malayalam", "മലയാളം"]
  }.freeze

  Episode = Struct.new(:title, :module, :languages, keyword_init: true)   # languages: [{ code:, name:, label:, src:, seconds: }]; module: for the original course

  def self.data = @data ||= YAML.load_file(Rails.root.join("config/podcasts.yml"))

  # The public address files are served from: credentials r2.public_url (e.g. a custom domain), else podcasts.yml.
  def self.base_url = (Rails.application.credentials.dig(:r2, :public_url).presence || data.fetch("base_url")).chomp("/")

  def self.for(course) = episodes(course.slug)

  def self.episodes(slug)
    Array(data.dig("courses", slug)).map do |ep|
      langs = ep["languages"].map do |code, f|
        name, label = LANGUAGES.fetch(code, [code, code])
        { code: code, name: name, label: label, src: "#{base_url}/#{f['key']}", seconds: f["seconds"].to_i }
      end
      Episode.new(title: ep["title"], module: ep["module"], languages: langs)
    end
  end

  def self.reload! = @data = nil
end
