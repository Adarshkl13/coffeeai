require_relative "../ai_starting_a_business_content"

namespace :content do
  desc "Create AI for Starting a Business course and populate all 15 lessons"
  task ai_starting_a_business: :environment do
    course = Course.find_or_create_by!(slug: "ai-starting-a-business") do |c|
      c.title       = "AI for Starting a Business"
      c.description = "Use AI to turn an idea into a real business plan. Check ideas with real customers, research your market and competitors honestly, work out prices, costs and cash flow, choose a business structure, and build a business plan and pitch deck."
      c.color       = "#3b82f6"
      c.icon        = "🚀"
      c.position    = 66
      c.published   = true
    end
    course.update!(description: "Use AI to turn an idea into a real business plan. Check ideas with real customers, research your market and competitors honestly, work out prices, costs and cash flow, choose a business structure, and build a business plan and pitch deck.")
    puts "Course: #{course.title}"

    titles = {
      1 => "From Idea to Business",
      2 => "Where AI Helps a Founder",
      3 => "Finding and Choosing Ideas",
      4 => "Understanding Your Customer",
      5 => "Checking an Idea Cheaply",
      6 => "Market Research with AI",
      7 => "Studying Competitors",
      8 => "Pricing and Unit Economics",
      9 => "Startup Costs and Cash Flow",
      10 => "Business Structure and Registrations",
      11 => "Writing a Simple Business Plan",
      12 => "Building a Pitch Deck",
      13 => "Pitching and Answering Questions",
      14 => "Your Launch Plan",
      15 => "Capstone: A Business Plan and Pitch for Chai Chowk"
    }

    descriptions = {
      1 => "Learn the four stages from idea to business, and what AI can and cannot do for a founder at each stage.",
      2 => "See where AI helps a founder, the risks of made-up data, praise and copying, and how a source list keeps your plan honest.",
      3 => "Find ideas from problems you know, your skills and trends, then choose one fairly with a weighted scoring matrix.",
      4 => "Define customer segments and jobs to be done, ask interview questions that do not lead, and use AI to draft guides and summarise notes.",
      5 => "Test an idea cheaply with interviews, sign-up forms, pre-orders and a small pilot, and learn what counts as real evidence.",
      6 => "Work out TAM, SAM and SOM from the bottom up with labelled assumptions and real source types, and use AI for the method, not the numbers.",
      7 => "Find direct and indirect competitors, compare them from your own visits, choose a clear position, and catch what AI gets wrong.",
      8 => "Calculate cost per unit, gross margin, weighted margin and break-even cups a day, with spreadsheet formulas and what-if checks.",
      9 => "List startup and monthly costs, build a 12-month cash flow sheet, work out burn rate and runway, and learn the main funding options.",
      10 => "Compare business structures in India and list the common registrations, such as FSSAI, Shops and Establishments, Udyam and GST. General education, not legal advice.",
      11 => "Build a business plan step by step: a one-page plan, a lean canvas and a full plan outline, with AI drafting and you adding the real facts.",
      12 => "Build a 10 to 12 slide pitch deck that tells one clear story, with honest traction and AI help for structure and wording.",
      13 => "Write a one-minute pitch, prepare for bank and investor questions, and practise your answers with AI role-play.",
      14 => "Plan your first 90 days: where your first 100 regulars come from, simple marketing and a weekly numbers sheet.",
      15 => "Put the course together into a business plan and pitch pack for Chai Chowk, then repeat it for your own idea."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is the main goal of the check stage for a new business?", opts: ["A) To write a long business plan", "B) To find real evidence that customers have the problem and will pay", "C) To register the company and open a bank account"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant gives a market size figure with confidence, you can put it in your business plan without a source.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "The weights are 3, 2, 2, 1 and 2. An idea scores 4, 5, 4, 5 and 3. What is its weighted score?", opts: ["A) 41", "B) 21", "C) 50"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which interview question gives the most useful answer?", opts: ["A) Would you buy tea from my new kiosk?", "B) Don't you hate the long queue at the tea stall?", "C) Tell me about the last time you had tea between classes. Where did you go?"], ans: "C" },
      5 => { type: "multiple_choice", q: "Which result is the strongest evidence that customers want Chai Chowk?", opts: ["A) 212 people filled in a free sign-up form", "B) 27 people paid ₹250 each for a prepaid launch card", "C) 13 of 15 people said they would try it"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which is the most honest way for a small kiosk to size its market?", opts: ["A) Copy a national tea market figure from an AI chat", "B) Take a big industry report figure and cut it in half", "C) Count local people, then multiply by the share who buy, the spend per visit and the number of days"], ans: "C" },
      7 => { type: "true_false", q: "If an AI tool gives a competitor's star rating and number of outlets, you can put them in your comparison table without checking.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Masala chai sells for ₹25 and costs ₹8.50 to make. What is its gross margin?", opts: ["A) 34%", "B) 66%", "C) ₹8.50"], ans: "B" },
      9 => { type: "multiple_choice", q: "A business has ₹3,25,000 in cash and loses ₹78,000 a month. What is its runway?", opts: ["A) About 4.2 months", "B) About 12 months", "C) About 42 months"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which statement about Udyam registration is correct?", opts: ["A) It is a food safety licence for tea stalls", "B) It is a free online MSME registration on the official Udyam website", "C) It replaces GST registration for small businesses"], ans: "B" },
      11 => { type: "multiple_choice", q: "You ask AI to draft the evidence section of your business plan. What is the best instruction to include?", opts: ["A) Use only the facts I give you and do not add any new numbers", "B) Make the demand sound as strong as possible", "C) Add market size figures to make the plan look complete"], ans: "A" },
      12 => { type: "multiple_choice", q: "Which line is the most honest way to show traction on a pitch deck slide?", opts: ["A) 212 customers are already waiting for us", "B) Customers love us", "C) 27 people paid ₹250 each for a prepaid launch card"], ans: "C" },
      13 => { type: "multiple_choice", q: "A loan officer asks how you will repay in a bad month. Which answer follows the four-part pattern?", opts: ["A) Don't worry, we will easily sell 400 cups a day.", "B) In the low case, the EMI comes from my ₹3,25,000 buffer. This is an estimate, and I will change the plan if sales stay low.", "C) Our tea is the best in Madhya Pradesh, so there will be no bad months."], ans: "B" },
      14 => { type: "true_false", q: "In a 90-day launch plan, you should set your decision rules only after you see the first month's numbers.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "An AI draft of your deck says \"The tea market in Madhya Pradesh grows 12% a year\", but you have no source. What should you do?", opts: ["A) Keep it, because AI usually knows market data", "B) Label it as an estimate", "C) Remove it from the deck"], ans: "C" }
    }

    AiStartingABusinessContent::LESSONS.each do |position, data|
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
