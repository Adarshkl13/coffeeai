# Company details shown on the policy, pricing and contact pages.
COMPANY = {
  brand: "CoffeeBean AI",
  legal_name: "CoffeeBean AI",
  website: "coffeebeanai.com",
  email: ENV.fetch("CONTACT_EMAIL", "hello@coffeebeanai.com"),
  hours: "Monday, Wednesday, Saturday and Sunday, 11 a.m. to 1 p.m. (IST)",
  # Official social pages: footer icons and the "sameAs" links Google reads (home page).
  social: {
    "Instagram" => "https://www.instagram.com/coffeebeanai/",
    "LinkedIn"  => "https://www.linkedin.com/company/coffeebeanai-com/"
  }.freeze
}.freeze
