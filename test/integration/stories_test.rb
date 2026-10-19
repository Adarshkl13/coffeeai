require "test_helper"

# Home page learner cards (config/testimonials.yml): real stories, or clearly labelled examples.
class StoriesTest < ActionDispatch::IntegrationTest
  teardown { Testimonial.reload! }

  def story(**h) = Testimonial::Story.new(name: "Priya Shah", role: "HR Manager", course: "AI for Recruitment",
                                          quote: "The lessons were short and clear.", sample: false, example: false, **h)

  test "with no stories or examples, the live site shows nothing (samples are for development only)" do
    Testimonial.instance_variable_set(:@all, []); Testimonial.instance_variable_set(:@examples, [])
    get root_path
    assert_select ".hs", 0
  end

  test "examples are introduced as examples and never called real stories" do
    Testimonial.instance_variable_set(:@all, [])
    get root_path
    assert_select ".hs h2", "Made for people like you"
    assert_select ".hs-card", Testimonial.examples.size
    assert_select ".hs-head p", /Examples of how/
    assert_no_match(/Real stories from real learners/, response.body)
  end

  test "real stories replace the examples and have no Example label" do
    Testimonial.instance_variable_set(:@all, [story])
    get root_path
    assert_select ".hs h2", "Real stories from real learners"
    assert_select ".hs-card", 1
    assert_select ".hs-example", 0
    assert_select ".hs-initials", "PS"
  end

  test "every example names a real course in the app" do
    titles = Course::CATEGORIES.flat_map(&:last)   # slugs exist in the catalogue
    assert titles.any?
    Testimonial.examples.each { |e| assert e.example && e.course.present?, e.name }
  end
end
