require_relative "../ai_banking_fraud_content"

namespace :content do
  desc "Create AI for Banking and Fraud Detection course and populate all 15 lessons"
  task ai_banking_fraud: :environment do
    course = Course.find_or_create_by!(slug: "ai-banking-fraud") do |c|
      c.title       = "AI for Banking and Fraud Detection"
      c.description = "Learn how banks and fintechs use AI, and how to use it yourself. Understand fraud signals, UPI and card scams, credit scoring, KYC and anti-money-laundering checks, customer service bots, and the rules for fair and safe AI in finance."
      c.color       = "#eab308"
      c.icon        = "🏦"
      c.position    = 44
      c.published   = true
    end
    course.update!(description: "Learn how banks and fintechs use AI, and how to use it yourself. Understand fraud signals, UPI and card scams, credit scoring, KYC and anti-money-laundering checks, customer service bots, and the rules for fair and safe AI in finance.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Banking Works",
      2 => "Where AI Is Used in Banking",
      3 => "Rules vs AI Models",
      4 => "Using AI Safely in Financial Work",
      5 => "Common Fraud Types",
      6 => "Fraud Signals",
      7 => "False Positives and False Negatives",
      8 => "Investigating an Alert with AI",
      9 => "Protecting Customers from Scams",
      10 => "Credit Scoring Explained",
      11 => "Loan Decisions and Explainability",
      12 => "Fairness in Financial AI",
      13 => "KYC and Anti-Money Laundering",
      14 => "Banking Chatbots and Rules",
      15 => "Capstone: Review a Fraud Case and a Loan Decision"
    }

    descriptions = {
      1 => "Learn the three jobs of a bank (deposits, loans and payments), the main ways to pay in India, and how banks earn money.",
      2 => "See the five main areas where banks use AI, and what people must still check and decide in each.",
      3 => "Understand the difference between rules and learned models, and how risk scores and thresholds turn into actions.",
      4 => "Keep financial data safe: know what never to paste into AI, make safe sample data and follow your AI policy.",
      5 => "Learn the warning signs of card fraud, UPI and QR scams, account takeover, loan app scams and identity fraud, and how to respond.",
      6 => "Learn the main fraud signals, such as unusual amounts, new devices and new payees, and read a sample transaction list.",
      7 => "Count false alarms and missed fraud, work out simple rates and costs, and see how a bank chooses its alert threshold.",
      8 => "Use AI to summarise a fraud case, build a timeline and draft a case note, while a person checks the facts and decides.",
      9 => "Write scam warnings that work, spot AI voice and deepfake scams, and learn what to do if money is lost.",
      10 => "Learn what credit bureaus do, what affects a credit score and how lenders use scores in their own models.",
      11 => "Learn how lenders turn a model's score into clear reasons, and use AI to write a fair, plain-language decline letter.",
      12 => "Understand bias and proxy variables in credit models, and check approval and error rates across groups with simple formulas.",
      13 => "Learn the basics of KYC checks, money laundering patterns and suspicious transaction reports, and how AI helps AML analysts.",
      14 => "Learn the safety rules for banking chatbots: never ask for OTPs, hand over to humans, protect privacy and give no personal advice.",
      15 => "Investigate made-up fraud alerts and write a case note, then check a small-business loan decision for errors and fairness."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "How does a bank mainly earn money from deposits and loans?", opts: ["A) It charges customers a fee for every UPI payment they receive", "B) It earns more interest on loans than it pays on deposits", "C) It keeps all deposits in a safe and charges rent for them"], ans: "B" },
      2 => { type: "multiple_choice", q: "A bank gives every card payment a risk score and holds the risky ones. Which area of AI use is this?", opts: ["A) Fraud checks", "B) Personalisation", "C) Service bots"], ans: "A" },
      3 => { type: "true_false", q: "A model's risk score decides the action by itself, so the bank does not need to choose a threshold.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "You want AI help to review a list of customer payments at work. What is the safest approach?", opts: ["A) Paste the full list into a free chat tool and delete the chat afterwards", "B) Paste only the PAN numbers, because they are not bank account numbers", "C) Use an approved tool and replace names and account numbers with labels first"], ans: "C" },
      5 => { type: "multiple_choice", q: "Someone buying Meena's old sofa asks her to scan a QR code and enter her UPI PIN to receive ₹8,000. What is true?", opts: ["A) This is normal, because UPI needs a PIN for every payment", "B) This is a scam sign, because receiving money never needs a PIN", "C) It is safe if the amount shown is exactly ₹8,000"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which payment shows the strongest fraud warning?", opts: ["A) Monthly rent of ₹18,000 to the same landlord", "B) A hotel payment in Kerala while the customer's phone is also in Kerala", "C) A new device adds a new payee and sends ₹48,000 at 2:47 am"], ans: "C" },
      7 => { type: "multiple_choice", q: "Out of 50 real frauds, the system flags 40. What is the catch rate?", opts: ["A) 80%", "B) 40%", "C) 16%"], ans: "A" },
      8 => { type: "true_false", q: "When you investigate an alert, the AI should make the final decision to block or release the payment.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "A caller sounds like your brother and asks for money urgently. What should you do first?", opts: ["A) Pay quickly, because it is an emergency", "B) Hang up and call him back on the number saved in your phone", "C) Share your OTP so the bank can check the call"], ans: "B" },
      10 => { type: "multiple_choice", q: "Ananya's card limit is ₹1,00,000 and her balance is ₹45,000. What is her credit utilisation?", opts: ["A) 55%", "B) 4.5%", "C) 45%"], ans: "C" },
      11 => { type: "multiple_choice", q: "Which reason is best to give a customer whose loan was declined?", opts: ["A) The system gave you a low score.", "B) Your EMIs would be 54% of your monthly pay, and our limit is 50%.", "C) We do not lend to people like you."], ans: "B" },
      12 => { type: "multiple_choice", q: "A loan model approves 60% of city applicants and 40% of rural applicants. What is the approval ratio, and what should you do?", opts: ["A) 0.67; look for the cause, such as a proxy like PIN code", "B) 1.5; nothing, the model is fair", "C) 0.2; switch the model off at once"], ans: "A" },
      13 => { type: "true_false", q: "After a bank files a suspicious transaction report, the analyst should tell the customer so they can explain.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A customer types their OTP into the bank's chatbot to unblock a card. What should a safe bot do?", opts: ["A) Use the OTP to unblock the card quickly", "B) Save the OTP for the human agent", "C) Not use it, warn the customer never to share an OTP, and point to the secure app"], ans: "C" },
      15 => { type: "multiple_choice", q: "Three UPI transfers of ₹25,000 were tried, and the system held the third one. How much left the account?", opts: ["A) ₹75,000", "B) ₹50,000", "C) ₹25,000"], ans: "B" }
    }

    AiBankingFraudContent::LESSONS.each do |position, data|
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
