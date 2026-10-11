module ApplicationHelper
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
