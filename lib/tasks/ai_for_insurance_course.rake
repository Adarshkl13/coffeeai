require_relative "../ai_for_insurance_content"

namespace :content do
  desc "Create AI for Insurance course and populate all 15 lessons"
  task ai_for_insurance: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-insurance") do |c|
      c.title       = "AI for Insurance"
      c.description = "Learn how AI is used in insurance and how to use it yourself. Understand policies in plain words, compare plans, process claims and documents, see how risk is priced, spot claim fraud, serve customers and use AI fairly. Education only, not insurance advice."
      c.color       = "#a855f7"
      c.icon        = "☂️"
      c.position    = 45
      c.published   = true
    end
    course.update!(description: "Learn how AI is used in insurance and how to use it yourself. Understand policies in plain words, compare plans, process claims and documents, see how risk is priced, spot claim fraud, serve customers and use AI fairly. Education only, not insurance advice.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Insurance Works",
      2 => "Where AI Helps in Insurance",
      3 => "Insurance Words in Plain English",
      4 => "Using AI Safely with Policy Documents",
      5 => "Understanding a Policy Document with AI",
      6 => "Comparing Plans",
      7 => "How Claims Work",
      8 => "Processing Claims Documents with AI",
      9 => "Writing Clear Customer Letters",
      10 => "Underwriting and Risk Pricing",
      11 => "Claim Fraud Signals",
      12 => "Customer Service Bots for Insurance",
      13 => "Fairness and Privacy in Insurance AI",
      14 => "Choosing the Right Cover for Your Life (Education)",
      15 => "Capstone: Review a Policy and a Claim"
    }

    descriptions = {
      1 => "Learn how insurance works through risk pooling, what premiums and claims are, and the main types of insurance.",
      2 => "See where AI helps insurers in sales, underwriting, service, claims and fraud checks, and what people must still decide.",
      3 => "Learn sum insured, premium, deductible, co-pay, waiting period, exclusions and riders in plain English, with a worked claim.",
      4 => "Keep personal and health data out of AI tools, practise with made-up documents and check AI's reading of a policy.",
      5 => "Use AI to summarise a policy's cover, exclusions and conditions with clause numbers, then check it and list questions for the insurer.",
      6 => "Build a comparison table for two health plans with AI, look beyond the premium, and understand the claim settlement ratio and its limits.",
      7 => "Learn the steps of a health claim, cashless versus reimbursement, the documents needed, common rejection reasons and the general IRDAI rules.",
      8 => "Use AI to list and total bill items, check them against policy terms and flag missing papers, while a person makes the decision.",
      9 => "Draft clear, kind claim updates, rejection letters and appeals with AI, using a simple six-part structure and the complaint route.",
      10 => "Learn how underwriters judge risk, why premiums differ, how a simple price is built, and the limits of the data and AI they use.",
      11 => "Learn the common signs of claim fraud, such as inflated bills and duplicate claims, and how to check claims fairly without slowing honest customers.",
      12 => "See what an insurance service bot should handle, when it must hand over to a person, and how to write its answers with AI.",
      13 => "Learn where bias in insurance AI comes from, how to test for it, how to protect sensitive data and how to explain decisions clearly.",
      14 => "Use needs-based thinking to understand which kinds of cover fit different lives, and prepare questions for a licensed adviser. Education only.",
      15 => "Summarise a sample health policy, compare two plans and check a sample claim with AI, then verify every number yourself."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "1,000 people each pay a premium of ₹5,000 into a pool. How much money is in the pool?", opts: ["A) ₹5,00,000", "B) ₹50,00,000", "C) ₹5,00,00,000"], ans: "B" },
      2 => { type: "multiple_choice", q: "Which insurance task should a trained person decide, not AI?", opts: ["A) Drafting a renewal reminder email", "B) Flagging two claims with the same bill number", "C) Rejecting a customer's hospital claim"], ans: "C" },
      3 => { type: "multiple_choice", q: "A covered bill is ₹1,00,000. The deductible of ₹10,000 comes off first, then a 20% co-pay applies to the rest. How much does the insurer pay?", opts: ["A) ₹72,000", "B) ₹70,000", "C) ₹80,000"], ans: "A" },
      4 => { type: "true_false", q: "It is safe to paste your Aadhaar number into a free AI chat if you delete the chat later.", opts: ["True", "False"], ans: "False" },
      5 => { type: "multiple_choice", q: "An AI summary says maternity is covered, but you are not sure. What should you do?", opts: ["A) Trust the summary, because AI read the whole document", "B) Find the clause in the policy and read it yourself, then ask the insurer if it is unclear", "C) Ask the AI again until it gives the answer you want"], ans: "B" },
      6 => { type: "multiple_choice", q: "Plan B has a 20% co-pay. For a covered bill of ₹2,00,000, how much do you pay?", opts: ["A) ₹20,000", "B) ₹40,000", "C) ₹1,60,000"], ans: "B" },
      7 => { type: "multiple_choice", q: "In a cashless claim, who pays the hospital for the covered amount?", opts: ["A) The insurer", "B) You, and the insurer pays you back later", "C) The hospital pays itself"], ans: "A" },
      8 => { type: "true_false", q: "When AI reads a claim bill, it is fine to let the AI approve or reject the claim if its total is correct.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "What should come first in a claim decision letter?", opts: ["A) A long list of policy terms", "B) The company's history", "C) The decision, in plain words"], ans: "C" },
      10 => { type: "multiple_choice", q: "1,000 people, 5% claim, average claim ₹1,60,000. What is the expected claim cost per person before expenses?", opts: ["A) ₹8,000", "B) ₹1,600", "C) ₹80,000"], ans: "A" },
      11 => { type: "true_false", q: "If an AI fraud score is high, the insurer can reject the claim without a person reviewing it.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "A customer tells the insurance bot: \"Why was my claim cut? I want to complain.\" What should the bot do?", opts: ["A) Guess the most likely reason for the cut", "B) Ask for the customer's full Aadhaar number", "C) Say sorry and hand the chat to a person with a summary"], ans: "C" },
      13 => { type: "multiple_choice", q: "Why can a PIN code cause hidden bias in an insurance model?", opts: ["A) It can stand in for income, religion or caste in some areas", "B) It is always illegal to store a PIN code", "C) It has no link to any real risk at all"], ans: "A" },
      14 => { type: "multiple_choice", q: "What is the main idea of needs-based thinking about insurance?", opts: ["A) Buy the plan with the lowest premium", "B) Start from your life, your dependants and your big money risks", "C) Buy whatever plan saves the most tax"], ans: "B" },
      15 => { type: "multiple_choice", q: "A claim has an admissible amount of ₹74,000 and the policy has a 10% co-pay. How much does the insurer pay?", opts: ["A) ₹74,000", "B) ₹66,600", "C) ₹7,400"], ans: "B" }
    }

    AiForInsuranceContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code].presence)

      e = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |x|
        x.exercise_type = e[:type]; x.question = e[:q]
        x.options = e[:opts]; x.correct_answer = e[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
