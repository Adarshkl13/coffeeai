require_relative "../javascript_content"
require_relative "../python_content"

namespace :content do
  desc "Populate body and starter_code for JavaScript course lessons"
  task javascript: :environment do
    course = Course.find_by(slug: "javascript")
    abort "JavaScript course not found" unless course

    JavaScriptContent::LESSONS.each do |position, data|
      lesson = course.course_lessons.find_by(position: position)
      next puts "  Lesson #{position} not found" unless lesson
      lesson.update!(body: data[:body], starter_code: data[:starter_code])
      puts "  ✓ #{position}. #{lesson.title}"
    end
    puts "Done! #{JavaScriptContent::LESSONS.size} lessons updated."
  end

  desc "Populate body and starter_code for Python course lessons"
  task python: :environment do
    course = Course.find_by(slug: "python")
    abort "Python course not found" unless course

    PythonContent::LESSONS.each do |position, data|
      lesson = course.course_lessons.find_by(position: position)
      next puts "  Lesson #{position} not found" unless lesson
      lesson.update!(body: data[:body], starter_code: data[:starter_code])
      puts "  ✓ #{position}. #{lesson.title}"
    end
    puts "Done! #{PythonContent::LESSONS.size} lessons updated."
  end

  desc "Populate all course content"
  task all: %i[html_css javascript python]
end

namespace :content do
  desc "Load every course: seeds-based content plus all dedicated course tasks"
  task everything: %i[
    all machine_learning artificial_intelligence data_science ruby java php sql mysql
    postgresql bootstrap django react pandas numpy typescript practical_ai deep_learning
    nodejs git github ai_assisted_development vector_databases building_rag_applications
    building_ai_agents prompt_engineering how_llms_work building_mcp_servers evaluating_ai_apps
    computer_vision fine_tuning_llms ai_safety
    ai_for_seo
    ai_social_media_marketing
    ai_for_paid_ads
    ai_email_marketing
    ai_content_marketing
    marketing_analytics_ai
    ai_personal_finance
    ai_accounting_bookkeeping
    ai_investing_research
    ai_banking_fraud
    ai_for_insurance
    ai_financial_analysis
    ai_sales_outreach
    ai_lead_generation
    ai_for_crm
    ai_sales_calls
    ai_for_recruitment
    ai_fair_hiring
    ai_employee_experience
    ai_sales_forecasting
    ai_learning_development
    ai_support_chatbots
    hr_analytics_ai
    ai_ticket_management
    ai_voice_call_centres
    ai_multilingual_support
    customer_feedback_analysis
    ai_store_growth
    ai_product_listings
    ai_product_photos_videos
    ai_pricing_inventory
    ai_reviews_returns
    ai_for_branding
    ai_for_podcasts
    ai_medical_documentation
    ai_contract_review
    ai_short_videos
    ai_medical_imaging
    ai_small_business_automation
    ai_patient_chatbots
    ai_starting_a_business
    ai_legal_drafting
    ai_youtube_creators
    ai_legal_research
    ai_for_freelancers
    ai_medical_research
    ai_hospital_operations
    ai_writers_bloggers
    safe_healthcare_ai
    legal_ethics_ai
    ai_images_design
    ai_brand_deals_creator_income
    ai_influencer_marketing
    ai_doctors_clinical_practice
    ai_litigation_court_prep
    ai_decision_making
    ai_api_testing
    ai_performance_management
    ai_meetings_communication
    testing_ai_apps
    ai_test_data_bug_triage
    ai_people_managers
    ai_software_testing
    ai_compensation_payroll
    ai_for_onboarding
    ai_project_management
    ai_strategy_leaders
    ai_test_automation
    ai_workforce_planning
    ai_hr_policies_compliance
    generative_ai_professionals
    generative_ai_fundamentals
    generative_ai_tools_applications
    build_with_generative_ai
    master_generative_ai
    neural_networks
    training_deep_models
    how_transformers_work
    text_to_image_generation
    text_to_video_generation
    build_llm_from_scratch
  ]
end
