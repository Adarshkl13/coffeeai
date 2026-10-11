require_relative "../customer_feedback_analysis_content"

namespace :content do
  desc "Create Customer Feedback Analysis course and populate all 15 lessons"
  task customer_feedback_analysis: :environment do
    course = Course.find_or_create_by!(slug: "customer-feedback-analysis") do |c|
      c.title       = "Customer Feedback Analysis"
      c.description = "Use AI to understand what customers are really saying. Collect feedback from surveys, reviews, tickets and social media, find themes and sentiment, measure CSAT, NPS and CES correctly, and turn insights into action."
      c.color       = "#22d3ee"
      c.icon        = "💬"
      c.position    = 59
      c.published   = true
    end
    course.update!(description: "Use AI to understand what customers are really saying. Collect feedback from surveys, reviews, tickets and social media, find themes and sentiment, measure CSAT, NPS and CES correctly, and turn insights into action.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Customer Feedback Matters",
      2 => "Where AI Helps with Feedback",
      3 => "Collecting Feedback",
      4 => "Survey Design",
      5 => "CSAT, NPS and CES",
      6 => "Preparing Feedback Data",
      7 => "Finding Themes with AI",
      8 => "Sentiment Analysis",
      9 => "Analysing Online Reviews",
      10 => "Feedback in Many Languages",
      11 => "Finding Root Causes and Priorities",
      12 => "Reporting Feedback Insights",
      13 => "Closing the Loop with Customers",
      14 => "Privacy and Ethics in Feedback",
      15 => "Capstone: A Voice-of-Customer Report"
    }

    descriptions = {
      1 => "Learn where customer feedback comes from, how the feedback loop works, and why you should count feedback before you act on it.",
      2 => "See how AI finds themes, labels sentiment, summarises and translates feedback, and how to catch wrong themes and made-up quotes.",
      3 => "Collect feedback from surveys, reviews, tickets, social media and calls at the right time, and spot bias in who answers.",
      4 => "Write clear survey questions, choose the right scales, use open questions well and keep surveys short to raise response rates.",
      5 => "Learn what CSAT, NPS and CES mean, calculate each one by hand and in a spreadsheet, and avoid the most common mistakes.",
      6 => "Combine feedback from every source into one sheet, clean it, remove personal data and pick a fair random sample to check AI's work.",
      7 => "Build a fixed theme list, ask AI to code every comment with it, and check AI's codes against a sample you coded by hand.",
      8 => "Label feedback as positive, negative, mixed or neutral, catch sarcasm and slang, measure AI's accuracy and report sentiment by source.",
      9 => "Analyse star ratings, review text and monthly trends, write honest replies with AI, and never write, buy or reward fake reviews.",
      10 => "Work with feedback in Malayalam, Hindi, Manglish and more: translate with AI, keep the original meaning and check with native speakers.",
      11 => "Find the root causes behind feedback themes and rank problems by impact and frequency, using tickets and cancellations as evidence.",
      12 => "Build a monthly voice-of-customer report with a clear dashboard, correct theme counts, exact quotes used with permission, and actions with owners.",
      13 => "Reply to unhappy customers, fix the root cause, tell customers what changed and use follow-up surveys to check that the fix worked.",
      14 => "Handle feedback with consent and care: keep it confidential, never identify reviewers, protect data in AI tools and report results honestly.",
      15 => "Analyse a mixed sample of surveys, reviews, WhatsApp messages and tickets for Backwater Trails, and write a full voice-of-customer report with actions."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is unsolicited feedback?", opts: ["A) An answer to the post-trip survey", "B) A Google review a guest writes on their own", "C) A guest's reply when the guide asks, \"Is everything OK?\""], ans: "B" },
      2 => { type: "true_false", q: "If an AI summary includes a customer quote with an ID, you can put it in your report without checking the original comment.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Houseboat guests answered the survey at 33%, but hill trip guests at only 25%. What is the main risk?", opts: ["A) The survey has too many open questions", "B) The spreadsheet formulas will not work", "C) The total score leans towards houseboat guests' opinions (non-response bias)"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which survey question is double-barrelled (two questions in one)?", opts: ["A) How satisfied were you with the food and the AC?", "B) How satisfied were you with the houseboat food?", "C) What is one thing we should improve?"], ans: "A" },
      5 => { type: "multiple_choice", q: "Out of 120 answers, there are 54 promoters, 42 passives and 24 detractors. What is the NPS?", opts: ["A) 75%", "B) +25", "C) 45"], ans: "B" },
      6 => { type: "multiple_choice", q: "Anjali has 460 feedback items and wants a fair sample of 50 to check by hand. Which sample is best?", opts: ["A) The 50 most interesting comments she can find", "B) The first 50 rows of the sheet", "C) A random sample, split by source in the same shares as all the items"], ans: "C" },
      7 => { type: "multiple_choice", q: "AI's theme codes match Anjali's hand codes on 42 of 50 sample items (84%). What should she do next?", opts: ["A) Compare the counts theme by theme, because one theme can still be too high or too low", "B) Trust the AI counts for all 460 items, because 84% is good", "C) Stop using a theme list and let AI choose new themes"], ans: "A" },
      8 => { type: "true_false", q: "\"Wonderful, the driver found us after only 50 minutes\" should be labelled positive, because it contains the word \"wonderful\".", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which of these is an honest way to handle online reviews?", opts: ["A) Ask AI to write 10 positive reviews \"from happy guests\"", "B) Reply calmly, name the real issue and say what you actually changed", "C) Offer ₹500 off only to guests who leave 5 stars"], ans: "B" },
      10 => { type: "multiple_choice", q: "AI translates the Manglish comment \"Pickup full scene aayirunnu\" as \"Pickup was a full scene\" and labels it neutral. What is the best next step?", opts: ["A) Delete the comment, because it is not in English", "B) Keep the AI label, because AI translation is always right", "C) Ask a native speaker to check the meaning, and keep the original next to the English"], ans: "C" },
      11 => { type: "multiple_choice", q: "47 items mention AC hours and 41 mention hidden charges. 17 items mention both. How many items mention at least one of them?", opts: ["A) 88", "B) 64", "C) 71"], ans: "C" },
      12 => { type: "multiple_choice", q: "Which is the best way to show September's NPS in a voice-of-customer report?", opts: ["A) NPS +25 (n = 120)", "B) NPS 25%", "C) NPS 7.9 out of 10"], ans: "A" },
      13 => { type: "true_false", q: "An AI tool may promise a refund in a public review reply before a person has checked the booking and approved it.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A report says: \"The only 1-star combo review came from the family of six from Maharashtra on 14 September.\" What is the problem?", opts: ["A) It uses too many numbers", "B) It can identify the reviewer, even without a name", "C) Nothing, because no name is used"], ans: "B" },
      15 => { type: "multiple_choice", q: "Why do refund complaints almost never appear in the Backwater Trails post-trip survey?", opts: ["A) Guests whose trips were cancelled never get the post-trip survey", "B) Refunds are not important to guests", "C) The survey has too many questions"], ans: "A" }
    }

    CustomerFeedbackAnalysisContent::LESSONS.each do |position, data|
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
