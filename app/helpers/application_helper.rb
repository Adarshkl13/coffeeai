module ApplicationHelper
  SITE_NAME = "CoffeeBean AI".freeze
  DEFAULT_DESCRIPTION = "Learn AI and how to use it, with podcasts too: what generative AI is, how AI works behind the scenes, " \
                        "how AI creates images, how tokens work, and how AI is transforming work. Plus practical guides for " \
                        "engineers, doctors, lawyers and digital marketers.".freeze

  # The one public address of the site (www.coffeebeanai.com on Heroku), used for canonical links, share
  # previews and the sitemap, so Google never sees the herokuapp.com or bare-domain copies as separate sites.
  def site_url
    Rails.env.production? ? "https://#{ENV.fetch('APP_HOST', 'www.coffeebeanai.com')}" : request.base_url
  end

  def canonical_url = site_url + request.path

  def page_description = content_for?(:description) ? content_for(:description).squish : DEFAULT_DESCRIPTION

  # Locked lesson titles for learners without a plan: shown blurred (.pro-blur), and the real words are
  # swapped for look-alike letters so they cannot be read by copying the text or in the page source.
  def obscure_text(text)
    rng = Random.new(text.to_s.sum)
    text.to_s.gsub(/[A-Za-z]/) { |c| (c =~ /[A-Z]/ ? ("A".."Z") : ("a".."z")).to_a[rng.rand(26)] }.gsub(/\d/) { rng.rand(10).to_s }
  end

  def pro_blur(text)
    content_tag(:span, obscure_text(text), class: "pro-blur", aria: { label: "Locked lesson" })
  end
end
