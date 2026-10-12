class Course < ApplicationRecord
  has_many :course_lessons, -> { order(:position) }, dependent: :destroy

  validates :title, :slug, presence: true
  validates :slug, uniqueness: true

  scope :published, -> { where(published: true) }
  scope :ordered,   -> { order(:position) }

  before_validation :set_slug

  # Course URLs use the slug (/courses/python), matching `resources :courses, param: :slug`.
  def to_param = slug

  # The 20 courses shown first on the home page (the "Featured" tab), in this order.
  FEATURED_SLUGS = %w[
    fine-tuning-llms python machine-learning artificial-intelligence building-rag-applications
    building-ai-agents prompt-engineering generative-ai-fundamentals master-generative-ai how-llms-work
    building-mcp-servers ai-for-recruitment ai-fair-hiring ai-pricing-inventory ai-medical-research
    ai-doctors-clinical-practice ai-legal-research ai-legal-drafting generative-ai-tools-applications
    ai-investing-research
  ].freeze

  def featured? = FEATURED_SLUGS.include?(slug)

  CATEGORIES = [
    ["Frontend",        %w[html-css javascript react typescript bootstrap]],
    ["Backend",         %w[python django ruby php java practical-ai nodejs]],
    ["Database",        %w[sql mysql postgresql]],
    ["AI & Data",       %w[machine-learning artificial-intelligence data-science pandas numpy deep-learning
                           ai-assisted-development vector-databases building-rag-applications building-ai-agents
                           prompt-engineering how-llms-work building-mcp-servers evaluating-ai-apps computer-vision
                           fine-tuning-llms ai-safety neural-networks training-deep-models how-transformers-work build-llm-from-scratch]],
    ["Generative AI",   %w[generative-ai-fundamentals generative-ai-tools-applications generative-ai-professionals
                           build-with-generative-ai master-generative-ai text-to-image-generation text-to-video-generation]],
    ["Developer Tools", %w[git github]],
    ["Digital Marketing", %w[ai-for-seo ai-social-media-marketing ai-for-paid-ads ai-email-marketing
                             ai-content-marketing marketing-analytics-ai ai-influencer-marketing]],
    ["Finance",         %w[ai-personal-finance ai-accounting-bookkeeping ai-financial-analysis
                           ai-investing-research ai-banking-fraud ai-for-insurance]],
    ["Sales & CRM",     %w[ai-lead-generation ai-sales-outreach ai-for-crm ai-sales-calls ai-sales-forecasting]],
    ["HR & Recruitment", %w[ai-for-recruitment ai-fair-hiring ai-employee-experience ai-learning-development hr-analytics-ai
                            ai-performance-management ai-for-onboarding ai-hr-policies-compliance ai-compensation-payroll
                            ai-workforce-planning]],
    ["Customer Support", %w[ai-support-chatbots ai-ticket-management ai-voice-call-centres customer-feedback-analysis
                            ai-multilingual-support]],
    ["E-commerce",      %w[ai-product-listings ai-store-growth ai-product-photos-videos ai-pricing-inventory ai-reviews-returns]],
    ["Small Business",  %w[ai-starting-a-business ai-small-business-automation ai-for-branding ai-for-freelancers]],
    ["Healthcare",      %w[ai-medical-documentation ai-medical-imaging ai-patient-chatbots ai-hospital-operations
                           ai-medical-research safe-healthcare-ai ai-doctors-clinical-practice]],
    ["Law",             %w[ai-contract-review ai-legal-research ai-legal-drafting legal-ethics-ai ai-litigation-court-prep]],
    ["Content Creation", %w[ai-youtube-creators ai-short-videos ai-for-podcasts ai-writers-bloggers ai-images-design ai-brand-deals-creator-income]],
    ["Software Testing", %w[ai-software-testing ai-test-automation ai-api-testing testing-ai-apps ai-test-data-bug-triage]],
    ["Management",      %w[ai-people-managers ai-project-management ai-meetings-communication ai-decision-making ai-strategy-leaders]]
  ].freeze

  # Unit headings in the lesson list, by course slug: { first lesson number => heading }.
  # Older courses keep theirs in the course and lesson views.
  LESSON_SECTIONS = {
    "ai-for-seo" => {1 => "Unit 1 · SEO & AI Basics", 5 => "Unit 2 · Research & Planning", 10 => "Unit 3 · On-Page, Technical & AI Search", 15 => "Capstone"},
    "ai-social-media-marketing" => {1 => "Unit 1 · Social Media & AI Basics", 5 => "Unit 2 · Creating Content", 10 => "Unit 3 · Growing & Measuring", 15 => "Capstone"},
    "ai-for-paid-ads" => {1 => "Unit 1 · Paid Ads & AI Basics", 5 => "Unit 2 · Creating Ads", 10 => "Unit 3 · Running & Improving", 15 => "Capstone"},
    "ai-email-marketing" => {1 => "Unit 1 · Email & AI Basics", 5 => "Unit 2 · Writing Emails", 10 => "Unit 3 · Automation & Results", 15 => "Capstone"},
    "ai-content-marketing" => {1 => "Unit 1 · Content & AI Basics", 5 => "Unit 2 · Creating Content", 10 => "Unit 3 · Distribution & Quality", 15 => "Capstone"},
    "marketing-analytics-ai" => {1 => "Unit 1 · Analytics Basics", 5 => "Unit 2 · Tools & Data", 10 => "Unit 3 · Analysis & Decisions", 15 => "Capstone"},
    "ai-personal-finance" => {1 => "Unit 1 · Money & AI Basics", 5 => "Unit 2 · Budgets & Spending", 10 => "Unit 3 · Goals, Debt & Safety", 15 => "Capstone"},
    "ai-accounting-bookkeeping" => {1 => "Unit 1 · Accounting & AI Basics", 5 => "Unit 2 · Daily Bookkeeping", 10 => "Unit 3 · Reports, Tax & Controls", 15 => "Capstone"},
    "ai-financial-analysis" => {1 => "Unit 1 · Analysis Basics", 5 => "Unit 2 · Reading & Measuring", 10 => "Unit 3 · Forecasting & Decisions", 15 => "Capstone"},
    "ai-investing-research" => {1 => "Unit 1 · Investing & AI Basics", 5 => "Unit 2 · Researching Companies", 10 => "Unit 3 · Portfolios, Risk & Safety", 15 => "Capstone"},
    "ai-banking-fraud" => {1 => "Unit 1 · Banking & AI Basics", 5 => "Unit 2 · Fraud & Risk", 10 => "Unit 3 · Credit, Compliance & Fairness", 15 => "Capstone"},
    "ai-for-insurance" => {1 => "Unit 1 · Insurance & AI Basics", 5 => "Unit 2 · Policies & Claims", 10 => "Unit 3 · Risk, Fraud & Service", 15 => "Capstone"},
    "ai-lead-generation" => {1 => "Unit 1 · Lead Generation Basics", 5 => "Unit 2 · Finding & Researching Leads", 10 => "Unit 3 · Scoring & Qualifying", 15 => "Capstone"},
    "ai-sales-outreach" => {1 => "Unit 1 · Outreach Basics", 5 => "Unit 2 · Writing Outreach", 10 => "Unit 3 · Sequences & Improving", 15 => "Capstone"},
    "ai-for-crm" => {1 => "Unit 1 · CRM Basics", 5 => "Unit 2 · Clean Data & Pipeline", 10 => "Unit 3 · Automation & Insights", 15 => "Capstone"},
    "ai-sales-calls" => {1 => "Unit 1 · Sales Call Basics", 5 => "Unit 2 · During & After the Call", 10 => "Unit 3 · Coaching & Improving", 15 => "Capstone"},
    "ai-sales-forecasting" => {1 => "Unit 1 · Forecasting Basics", 5 => "Unit 2 · Pipeline Forecasts", 10 => "Unit 3 · Win/Loss & Planning", 15 => "Capstone"},
    "ai-for-recruitment" => {1 => "Unit 1 · Recruitment Basics", 5 => "Unit 2 · Attracting & Screening", 10 => "Unit 3 · Interviews & Offers", 15 => "Capstone"},
    "ai-fair-hiring" => {1 => "Unit 1 · Fairness Basics", 5 => "Unit 2 · Fair Processes", 10 => "Unit 3 · Checking, Rules & Trust", 15 => "Capstone"},
    "ai-employee-experience" => {1 => "Unit 1 · Employee Experience Basics", 5 => "Unit 2 · Onboarding & Support", 10 => "Unit 3 · Listening & Engagement", 15 => "Capstone"},
    "ai-learning-development" => {1 => "Unit 1 · L&D Basics", 5 => "Unit 2 · Designing Learning", 10 => "Unit 3 · Delivering & Measuring", 15 => "Capstone"},
    "hr-analytics-ai" => {1 => "Unit 1 · HR Analytics Basics", 5 => "Unit 2 · Key HR Metrics", 10 => "Unit 3 · Insights & Planning", 15 => "Capstone"},
    "ai-support-chatbots" => {1 => "Unit 1 · Chatbot Basics", 5 => "Unit 2 · Designing Your Bot", 10 => "Unit 3 · Channels, Quality & Safety", 15 => "Capstone"},
    "ai-ticket-management" => {1 => "Unit 1 · Ticketing Basics", 5 => "Unit 2 · Sorting, Routing & Replying", 10 => "Unit 3 · SLAs, Quality & Improving", 15 => "Capstone"},
    "ai-voice-call-centres" => {1 => "Unit 1 · Call Centre Basics", 5 => "Unit 2 · AI During & After Calls", 10 => "Unit 3 · Voice Bots & Quality", 15 => "Capstone"},
    "customer-feedback-analysis" => {1 => "Unit 1 · Feedback Basics", 5 => "Unit 2 · Analysing Feedback", 10 => "Unit 3 · Acting on Feedback", 15 => "Capstone"},
    "ai-multilingual-support" => {1 => "Unit 1 · Multilingual Basics", 5 => "Unit 2 · Translation & Replies", 10 => "Unit 3 · Quality & Scale", 15 => "Capstone"},
    "ai-product-listings" => {1 => "Unit 1 · Listing Basics", 5 => "Unit 2 · Writing Great Listings", 10 => "Unit 3 · Marketplaces & Scale", 15 => "Capstone"},
    "ai-store-growth" => {1 => "Unit 1 · Growth Basics", 5 => "Unit 2 · Getting & Converting Shoppers", 10 => "Unit 3 · Keeping Customers", 15 => "Capstone"},
    "ai-product-photos-videos" => {1 => "Unit 1 · Product Visual Basics", 5 => "Unit 2 · Creating Images & Videos", 10 => "Unit 3 · Rules, Testing & Scale", 15 => "Capstone"},
    "ai-pricing-inventory" => {1 => "Unit 1 · Pricing & Stock Basics", 5 => "Unit 2 · Pricing with AI", 10 => "Unit 3 · Inventory Planning", 15 => "Capstone"},
    "ai-reviews-returns" => {1 => "Unit 1 · Reviews & Returns Basics", 5 => "Unit 2 · Managing Reviews", 10 => "Unit 3 · Reducing Returns", 15 => "Capstone"},
    "ai-starting-a-business" => {1 => "Unit 1 · Idea & Customer", 5 => "Unit 2 · Market & Money", 10 => "Unit 3 · Plan & Pitch", 15 => "Capstone"},
    "ai-small-business-automation" => {1 => "Unit 1 · Automation Basics", 5 => "Unit 2 · Automating Daily Work", 10 => "Unit 3 · Building & Running Automations", 15 => "Capstone"},
    "ai-for-branding" => {1 => "Unit 1 · Brand Basics", 5 => "Unit 2 · Name, Look & Voice", 10 => "Unit 3 · Bringing the Brand Online", 15 => "Capstone"},
    "ai-for-freelancers" => {1 => "Unit 1 · Freelancing Basics", 5 => "Unit 2 · Winning Clients", 10 => "Unit 3 · Running Your Freelance Business", 15 => "Capstone"},
    "ai-medical-documentation" => {1 => "Unit 1 · Documentation Basics", 5 => "Unit 2 · Notes & Summaries", 10 => "Unit 3 · Coding & Quality", 15 => "Capstone"},
    "ai-medical-imaging" => {1 => "Unit 1 · Imaging Basics", 5 => "Unit 2 · How Imaging AI Works", 10 => "Unit 3 · Using Imaging AI Safely", 15 => "Capstone"},
    "ai-patient-chatbots" => {1 => "Unit 1 · Patient Chatbot Basics", 5 => "Unit 2 · Designing Safe Conversations", 10 => "Unit 3 · Launching & Monitoring", 15 => "Capstone"},
    "ai-hospital-operations" => {1 => "Unit 1 · Operations Basics", 5 => "Unit 2 · Patients, Beds & Staff", 10 => "Unit 3 · Stock, Money & Quality", 15 => "Capstone"},
    "ai-medical-research" => {1 => "Unit 1 · Research Basics", 5 => "Unit 2 · Finding & Reading Evidence", 10 => "Unit 3 · Analysing & Writing", 15 => "Capstone"},
    "safe-healthcare-ai" => {1 => "Unit 1 · Foundations", 5 => "Unit 2 · Key Risks", 10 => "Unit 3 · Governance in Practice", 15 => "Capstone"},
    "ai-contract-review" => {1 => "Unit 1 · Contract Basics", 5 => "Unit 2 · Reviewing with AI", 10 => "Unit 3 · Risk, Negotiation & Workflow", 15 => "Capstone"},
    "ai-legal-research" => {1 => "Unit 1 · Research Basics", 5 => "Unit 2 · Finding the Law", 10 => "Unit 3 · Checking & Writing", 15 => "Capstone"},
    "ai-legal-drafting" => {1 => "Unit 1 · Drafting Basics", 5 => "Unit 2 · Letters & Notices", 10 => "Unit 3 · Agreements & Quality", 15 => "Capstone"},
    "legal-ethics-ai" => {1 => "Unit 1 · Foundations", 5 => "Unit 2 · Core Duties", 10 => "Unit 3 · Policies & Practice", 15 => "Capstone"},
    "ai-youtube-creators" => {1 => "Unit 1 · YouTube Basics", 5 => "Unit 2 · Planning & Making Videos", 10 => "Unit 3 · Packaging & Growing", 15 => "Capstone"},
    "ai-short-videos" => {1 => "Unit 1 · Short Video Basics", 5 => "Unit 2 · Scripts, Filming & Editing", 10 => "Unit 3 · Posting & Growing", 15 => "Capstone"},
    "ai-for-podcasts" => {1 => "Unit 1 · Podcast Basics", 5 => "Unit 2 · Planning & Recording", 10 => "Unit 3 · Editing & Growing", 15 => "Capstone"},
    "ai-writers-bloggers" => {1 => "Unit 1 · Writing with AI Basics", 5 => "Unit 2 · Planning & Drafting", 10 => "Unit 3 · Editing, Publishing & Growing", 15 => "Capstone"},
    "ai-images-design" => {1 => "Unit 1 · AI Image Basics", 5 => "Unit 2 · Creating Images", 10 => "Unit 3 · Design Work & Rules", 15 => "Capstone"},
    "ai-litigation-court-prep" => {1 => "Unit 1 · Litigation Basics", 5 => "Unit 2 · Building the Case", 10 => "Unit 3 · Hearing & Trial Preparation", 15 => "Capstone"},
    "ai-doctors-clinical-practice" => {1 => "Unit 1 · Clinical AI Basics", 5 => "Unit 2 · AI in the Consultation", 10 => "Unit 3 · Safe Practice", 15 => "Capstone"},
    "ai-brand-deals-creator-income" => {1 => "Unit 1 · Creator Income Basics", 5 => "Unit 2 · Winning Brand Deals", 10 => "Unit 3 · Running Deals & Growing Income", 15 => "Capstone"},
    "ai-influencer-marketing" => {1 => "Unit 1 · Influencer Marketing Basics", 5 => "Unit 2 · Finding & Briefing Creators", 10 => "Unit 3 · Running & Measuring Campaigns", 15 => "Capstone"},
    "ai-performance-management" => {1 => "Unit 1 · Performance Basics", 5 => "Unit 2 · Goals & Feedback", 10 => "Unit 3 · Reviews & Fairness", 15 => "Capstone"},
    "ai-for-onboarding" => {1 => "Unit 1 · Onboarding Basics", 5 => "Unit 2 · Building the Journey", 10 => "Unit 3 · Running & Improving", 15 => "Capstone"},
    "ai-hr-policies-compliance" => {1 => "Unit 1 · Policy Basics", 5 => "Unit 2 · Writing Policies", 10 => "Unit 3 · Compliance in Practice", 15 => "Capstone"},
    "ai-compensation-payroll" => {1 => "Unit 1 · Pay Basics", 5 => "Unit 2 · Fair & Clear Pay", 10 => "Unit 3 · Payroll & Benefits", 15 => "Capstone"},
    "ai-workforce-planning" => {1 => "Unit 1 · Planning Basics", 5 => "Unit 2 · Analysing the Workforce", 10 => "Unit 3 · Plans & Decisions", 15 => "Capstone"},
    "ai-software-testing" => {1 => "Unit 1 · Testing Basics", 5 => "Unit 2 · Designing Tests", 10 => "Unit 3 · Bugs, Planning & Quality", 15 => "Capstone"},
    "ai-test-automation" => {1 => "Unit 1 · Automation Basics", 5 => "Unit 2 · Writing Automated Tests", 10 => "Unit 3 · Running & Maintaining Tests", 15 => "Capstone"},
    "ai-api-testing" => {1 => "Unit 1 · API Basics", 5 => "Unit 2 · Designing API Tests", 10 => "Unit 3 · Running & Improving", 15 => "Capstone"},
    "testing-ai-apps" => {1 => "Unit 1 · AI App Basics", 5 => "Unit 2 · Designing Tests for AI", 10 => "Unit 3 · Safety, Risk & Release", 15 => "Capstone"},
    "ai-test-data-bug-triage" => {1 => "Unit 1 · Test Data Basics", 5 => "Unit 2 · Creating & Managing Data", 10 => "Unit 3 · Bug Triage", 15 => "Capstone"},
    "ai-people-managers" => {1 => "Unit 1 · Managing with AI", 5 => "Unit 2 · Everyday Leadership", 10 => "Unit 3 · Hard Moments & Growth", 15 => "Capstone"},
    "ai-project-management" => {1 => "Unit 1 · Project Basics", 5 => "Unit 2 · Planning", 10 => "Unit 3 · Delivering & Closing", 15 => "Capstone"},
    "ai-meetings-communication" => {1 => "Unit 1 · Communication Basics", 5 => "Unit 2 · Meetings", 10 => "Unit 3 · Writing & Sharing", 15 => "Capstone"},
    "ai-decision-making" => {1 => "Unit 1 · Decision Basics", 5 => "Unit 2 · Analysing Options", 10 => "Unit 3 · Deciding & Learning", 15 => "Capstone"},
    "ai-strategy-leaders" => {1 => "Unit 1 · AI for Leaders", 5 => "Unit 2 · Choosing & Running AI Projects", 10 => "Unit 3 · Leading the Change", 15 => "Capstone"},
    "generative-ai-fundamentals" => {1 => "Unit 1 · What Generative AI Is", 5 => "Unit 2 · Using Generative AI Well", 10 => "Unit 3 · Limits, Safety & Ethics", 15 => "Capstone"},
    "build-with-generative-ai" => {1 => "Unit 1 · First Steps with Model APIs", 5 => "Unit 2 · Building Features", 10 => "Unit 3 · From Prototype to Product", 15 => "Capstone"},
    "master-generative-ai" => {1 => "Unit 1 · Under the Hood", 5 => "Unit 2 · Adapting Models", 10 => "Unit 3 · Production at Scale", 15 => "Capstone"},
    "generative-ai-tools-applications" => {1 => "Unit 1 · The Tool Landscape", 5 => "Unit 2 · Creating with AI", 10 => "Unit 3 · AI in Everyday Work", 15 => "Capstone"},
    "generative-ai-professionals" => {1 => "Unit 1 · Generative AI at Work", 5 => "Unit 2 · Core Work Skills", 10 => "Unit 3 · Working Smarter & Safer", 15 => "Capstone"},
    "neural-networks" => {1 => "Unit 1 · Neurons and Layers", 7 => "Unit 2 · How Networks Learn", 14 => "Unit 3 · Building Networks", 18 => "Capstone"},
    "training-deep-models" => {1 => "Unit 1 · Setup and Data", 7 => "Unit 2 · The Training Recipe", 12 => "Unit 3 · Model Types and Speed", 18 => "Unit 4 · Monitoring and Debugging", 20 => "Capstone"},
    "how-transformers-work" => {1 => "Unit 1 · Before Attention", 6 => "Unit 2 · Attention", 12 => "Unit 3 · Building the Model", 17 => "Unit 4 · Beyond Text", 19 => "Capstone"},
    "text-to-image-generation" => {1 => "Unit 1 · Images and Early Models", 6 => "Unit 2 · Diffusion Models", 11 => "Unit 3 · Stable Diffusion", 15 => "Unit 4 · Control and Customisation", 18 => "Capstone"},
    "text-to-video-generation" => {1 => "Unit 1 · Video Basics", 5 => "Unit 2 · How Video Models Work", 10 => "Unit 3 · Control and Editing", 15 => "Unit 4 · Tools and Responsibility", 17 => "Capstone"},
    "build-llm-from-scratch" => {1 => "Unit 1 · Data and Tokens", 7 => "Unit 2 · Building the Model", 11 => "Unit 3 · Training and Generating", 16 => "Unit 4 · Scaling Up", 18 => "Unit 5 · Tuning, Testing and Running", 22 => "Capstone"}
  }.freeze

  # Category names in display order, with how many of the given courses are in each.
  def self.category_counts(courses)
    counts = courses.group_by(&:category_name).transform_values(&:size)
    (CATEGORIES.map(&:first) + ["Course"]).filter_map { |name| [name, counts[name]] if counts[name] }
  end

  # { course_id => { total:, done:, pct:, next_lesson: } } for one learner, using one progress query.
  # Courses should be loaded with .includes(:course_lessons).
  def self.progress_for(user, courses)
    rows = user.course_progresses
               .where(status: [CourseProgress.statuses[:completed], CourseProgress.statuses[:skipped]])
               .pluck(:course_lesson_id, :status)
    done_ids = rows.map(&:first).to_set
    completed_ids = rows.filter_map { |id, st| id if st.to_s == "completed" || st == CourseProgress.statuses[:completed] }.to_set
    courses.to_h do |course|
      lessons = course.course_lessons.sort_by(&:position)
      done = lessons.count { |l| done_ids.include?(l.id) }
      pct = lessons.empty? ? 0 : (done * 100.0 / lessons.size).round
      # completed: finished, not skipped (only these count for a certificate)
      [course.id, { total: lessons.size, done: done, pct: pct, completed: lessons.count { |l| completed_ids.include?(l.id) },
                    next_lesson: lessons.find { |l| !done_ids.include?(l.id) } || lessons.first }]
    end
  end

  # The course colour adjusted for the dark theme: readable as a button behind white text and
  # visible against the page background. The stored brand colour is left unchanged.
  PAGE_BG = "#151534"

  def ui_color
    @ui_color ||= begin
      rgb = color.to_s.delete("#").scan(/../).map { |c| c.to_i(16) }
      rgb = [139, 92, 246] if rgb.size != 3
      12.times { break if self.class.contrast(rgb, [255, 255, 255]) >= 3.2; rgb = rgb.map { |v| (v * 0.9).round } }
      12.times { break if self.class.contrast(rgb, self.class.hex_rgb(PAGE_BG)) >= 2.4; rgb = rgb.map { |v| (v + (255 - v) * 0.12).round } }
      format("#%02x%02x%02x", *rgb)
    end
  end

  def self.hex_rgb(hex) = hex.delete("#").scan(/../).map { |c| c.to_i(16) }

  def self.luminance(rgb)
    r, g, b = rgb.map { |v| v /= 255.0; v <= 0.03928 ? v / 12.92 : ((v + 0.055) / 1.055)**2.4 }
    0.2126 * r + 0.7152 * g + 0.0722 * b
  end

  def self.contrast(a, b)
    la, lb = luminance(a), luminance(b)
    (([la, lb].max + 0.05) / ([la, lb].min + 0.05)).round(2)
  end

  def category_name
    return category if respond_to?(:category) && category.present?
    CATEGORIES.find { |_, slugs| slugs.include?(slug) }&.first || "Course"
  end

  def completion_percentage(user)
    total = course_lessons.count
    return 0 if total.zero?
    done = user.course_progresses
               .where(course_lesson_id: course_lessons.pluck(:id))
               .where(status: [ CourseProgress.statuses[:completed], CourseProgress.statuses[:skipped] ])
               .count
    (done.to_f / total * 100).round
  end

  # Lessons the learner really completed (skipped ones do not count). Used for certificates.
  def fully_completed_count(user)
    user.course_progresses.where(course_lesson_id: course_lessons.select(:id)).where(status: CourseProgress.statuses[:completed]).count
  end

  def completed_lessons_count(user)
    user.course_progresses
        .where(course_lesson_id: course_lessons.pluck(:id))
        .where(status: [ CourseProgress.statuses[:completed], CourseProgress.statuses[:skipped] ])
        .count
  end

  private

  def set_slug
    self.slug ||= title&.parameterize
  end
end
