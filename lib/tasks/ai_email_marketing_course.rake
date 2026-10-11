require_relative "../ai_email_marketing_content"

namespace :content do
  desc "Create AI for Email Marketing course and populate all 15 lessons"
  task ai_email_marketing: :environment do
    course = Course.find_or_create_by!(slug: "ai-email-marketing") do |c|
      c.title       = "AI for Email Marketing"
      c.description = "Use AI to grow and use your email list. Write subject lines and emails that get opened, build welcome and sales sequences, segment and personalise, improve deliverability and read your email reports."
      c.color       = "#06b6d4"
      c.icon        = "📧"
      c.position    = 37
      c.published   = true
    end
    course.update!(description: "Use AI to grow and use your email list. Write subject lines and emails that get opened, build welcome and sales sequences, segment and personalise, improve deliverability and read your email reports.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Email Marketing Works",
      2 => "Where AI Helps in Email",
      3 => "Growing Your List the Right Way",
      4 => "Email Metrics Explained",
      5 => "Subject Lines and Preview Text",
      6 => "Writing Emails That Get Clicks",
      7 => "Newsletters",
      8 => "Promotional and Sales Emails",
      9 => "Personalisation",
      10 => "Segmentation",
      11 => "Welcome and Nurture Sequences",
      12 => "Deliverability Basics",
      13 => "A/B Tests and Email Reports",
      14 => "Rules, Consent and Unsubscribes",
      15 => "Capstone: Build an Email Campaign"
    }

    descriptions = {
      1 => "Learn the basic parts of email marketing: your list, campaigns, automations and consent.",
      2 => "See where AI helps in email work, how to keep your brand voice, and what you must always check.",
      3 => "Grow your email list with sign-up forms, lead magnets and clear consent, and learn why you should never buy a list.",
      4 => "Understand delivery, open, click, conversion and unsubscribe rates, and check AI's report maths yourself.",
      5 => "Use AI to write many honest subject lines and preview texts, avoid spammy styles, and test the best ones.",
      6 => "Write emails with one goal, a clear call to action and short, phone-friendly text, using AI for fast drafts.",
      7 => "Plan a regular newsletter, choose a helpful content mix and use AI to turn your blog and social posts into sections.",
      8 => "Write clear offers with honest urgency, plan festival campaigns and set up abandoned-cart emails with AI.",
      9 => "Go beyond first names with interests and behaviour, use merge tags with fallbacks and respect privacy limits.",
      10 => "Split your list into useful segments, let AI suggest segments from a sample table and check the counts yourself.",
      11 => "Map welcome and nurture sequences with a trigger, delays and an exit rule, then use AI to draft each email.",
      12 => "Learn how inbox providers decide between inbox and spam, what SPF, DKIM and DMARC do, and how to keep your list clean.",
      13 => "Run fair A/B tests, read email reports with AI, and check the maths yourself in a spreadsheet.",
      14 => "Learn the main ideas behind consent, unsubscribes and privacy rules such as India's DPDP Act, and use AI to check your emails. Not legal advice.",
      15 => "Plan a full email campaign: a list plan, a 5-email welcome sequence, segments, one promotion and a report plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A welcome email that is sent right after someone joins your list is an example of what?", opts: ["A) A campaign", "B) An automation", "C) A segment"], ans: "B" },
      2 => { type: "multiple_choice", q: "Which is the safest way to use AI to suggest customer segments?", opts: ["A) Remove names, emails and phone numbers from the data before you paste it", "B) Paste your full customer list so the AI has all the details", "C) Let the AI send the emails directly to each segment"], ans: "A" },
      3 => { type: "true_false", q: "Buying a large email list is a quick and safe way to grow your email marketing.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Why is open rate less reliable than it used to be?", opts: ["A) Email platforms no longer count opens", "B) Most people read emails without opening them", "C) Some privacy features load emails by themselves, so an open may be counted when no person read it"], ans: "C" },
      5 => { type: "multiple_choice", q: "What should good preview text do?", opts: ["A) Repeat the subject line word for word", "B) Add new information that gives a second reason to open", "C) Use ALL CAPS so it stands out"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which call to action (CTA) is clearest for an email about a baking workshop?", opts: ["A) Click here", "B) Book your seat for Sunday", "C) Learn more about us and our products"], ans: "B" },
      7 => { type: "multiple_choice", q: "What is a good way to fill a monthly newsletter without new ideas every time?", opts: ["A) Reuse your own blog posts, social posts and customer questions, then check the AI draft", "B) Ask AI to invent customer stories", "C) Send only sales offers in every issue"], ans: "A" },
      8 => { type: "true_false", q: "Writing \"Only 2 left!\" is fine in a sales email, even when you have 200 in stock.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Why should you set a fallback for a first-name merge tag?", opts: ["A) It makes the email load faster", "B) It hides the email from spam filters", "C) It shows friendly text, such as \"there\", when the name is empty"], ans: "C" },
      10 => { type: "multiple_choice", q: "An AI looked at 6 sample rows and says 600 people in your full list are repeat buyers. What should you do?", opts: ["A) Trust the number, because AI is good with data", "B) Count it yourself in the full spreadsheet, for example with COUNTIF", "C) Send the email to all 600 at once"], ans: "B" },
      11 => { type: "multiple_choice", q: "A subscriber buys after the third welcome email. What should stop them from getting the first-order discount in email five?", opts: ["A) A longer delay between emails", "B) An exit rule in the sequence", "C) A new subject line"], ans: "B" },
      12 => { type: "multiple_choice", q: "What does DKIM do?", opts: ["A) It adds a digital signature that shows the email came from your domain and was not changed", "B) It removes inactive subscribers from your list", "C) It tests two subject lines against each other"], ans: "A" },
      13 => { type: "multiple_choice", q: "An AI tool says version B's click rate is 6.9%. B had 71 unique clicks and 1,180 delivered emails. What should you do?", opts: ["A) Trust it, because AI is good at maths", "B) Use the open rate instead", "C) Recalculate =71/1180 in a spreadsheet, which gives about 6.0%"], ans: "C" },
      14 => { type: "true_false", q: "A pre-ticked \"Send me offers\" box on a sign-up form counts as clear consent.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "While drafting your campaign, the AI writes \"Only 2 seats left, book today!\" but you do not know the real number. What should you do?", opts: ["A) Replace it with [check with owner] and confirm the fact", "B) Keep it, because urgency increases clicks", "C) Change it to \"Only 5 seats left\""], ans: "A" }
    }

    AiEmailMarketingContent::LESSONS.each do |position, data|
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
