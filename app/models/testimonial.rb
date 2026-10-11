# Learner cards for the home page (config/testimonials.yml): real stories, or clearly labelled examples. Read once per boot.
class Testimonial
  Story = Struct.new(:name, :role, :course, :quote, :photo, :sample, :example, keyword_init: true) do
    def initials = name.to_s.split.map { |w| w[0] }.first(2).join.upcase
  end

  # Shown only on a developer's computer, so the design can be checked before real stories exist.
  SAMPLES = [
    { name: "Learner Name", role: "Job title", course: "Course name",
      quote: "Sample text. Replace this with a real learner's words: what they learned and what changed for them." },
    { name: "Learner Name", role: "Job title", course: "Course name",
      quote: "Sample text. Ask your learners for two or three sentences about their experience, and their permission to share it." },
    { name: "Learner Name", role: "Job title", course: "Course name",
      quote: "Sample text. Add each story to config/testimonials.yml. This card disappears when real stories are added." }
  ].map { |h| Story.new(**h, sample: true, example: false) }.freeze

  def self.data = @data ||= YAML.load_file(Rails.root.join("config/testimonials.yml"))

  def self.load(key, **flags)
    Array(data[key]).map { |h| Story.new(**h.symbolize_keys.slice(:name, :role, :course, :quote, :photo), sample: false, example: false, **flags) }
  end

  def self.all = @all ||= load("stories")
  def self.examples = @examples ||= load("examples", example: true)

  # What the home page shows: real stories; else the labelled examples; else, in development only, the samples.
  def self.for_home = all.presence || examples.presence || (Rails.env.development? ? SAMPLES : [])

  def self.reload! = @all = @examples = @data = nil
end
