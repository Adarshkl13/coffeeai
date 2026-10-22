require_relative "../ai_for_seo_content"

namespace :content do
  desc "Create AI for SEO course and populate all 15 lessons"
  task ai_for_seo: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-seo") do |c|
      c.title       = "AI for SEO"
      c.description = "Use AI to grow free traffic from search. Research keywords and search intent, plan content, write helpful pages, improve titles and on-page SEO, run technical checks, get found in AI search answers and measure results."
      c.color       = "#f43f5e"
      c.icon        = "🔎"
      c.position    = 34
      c.published   = true
    end
    course.update!(description: "Use AI to grow free traffic from search. Research keywords and search intent, plan content, write helpful pages, improve titles and on-page SEO, run technical checks, get found in AI search answers and measure results.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Search and SEO Work",
      2 => "Where AI Helps in SEO",
      3 => "Search Intent",
      4 => "Prompts for SEO Work",
      5 => "Keyword Research with AI",
      6 => "Keyword Clusters and Topic Maps",
      7 => "Competitor Content Gaps",
      8 => "Content Briefs with AI",
      9 => "Writing Helpful SEO Content",
      10 => "Titles, Meta Descriptions and Headings",
      11 => "On-Page SEO Checks",
      12 => "Technical SEO Basics with AI",
      13 => "Local SEO",
      14 => "SEO for AI Search Answers",
      15 => "Capstone: An SEO Plan for a Small Business"
    }

    descriptions = {
      1 => "Learn how search engines crawl, index and rank pages, the difference between organic and paid results, and why SEO takes time.",
      2 => "See where AI saves time in SEO, where it can hurt your site, and what people-first content means.",
      3 => "Learn the four types of search intent and how to match each one with the right kind of page.",
      4 => "Write strong SEO prompts with a role, business context, audience, your own data and a clear format.",
      5 => "Use AI to find seed keywords, long-tail keywords and questions, then check them with real tools like Search Console.",
      6 => "Group keywords into clusters by topic and intent, and plan pillar pages and cluster pages with AI.",
      7 => "Compare the top search results with AI to find missing topics and questions, without copying anyone.",
      8 => "Use a simple brief template and AI to plan one page: intent, outline, questions, sources and internal links.",
      9 => "Turn an AI draft into a helpful page with your own experience and checked facts, and avoid spam-like habits.",
      10 => "Use AI to write many title and meta description options, pick the best, and plan clear H1 and H2 headings.",
      11 => "Build an on-page SEO checklist for keywords, headings, links, alt text and readability, and use AI to apply it.",
      12 => "Learn page speed, mobile, indexing, sitemaps and robots.txt in plain words, and use AI to explain audit reports.",
      13 => "Improve your Google Business Profile, reviews, replies, local pages and NAP consistency while following the rules.",
      14 => "Write clear, answer-first pages that AI Overviews and AI assistants can use, and measure the results.",
      15 => "Put the course together into a 3-month SEO plan for a small business, from research to measurement."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does it mean when Google has indexed your page?", opts: ["A) You paid Google to show the page as an ad", "B) Google has saved the page in its library of pages it knows", "C) The page is guaranteed to rank on page one"], ans: "B" },
      2 => { type: "true_false", q: "Google's guidance says that any content written with help from AI is banned from search results.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Someone searches \"order eggless cake online\". What is the main search intent?", opts: ["A) Informational", "B) Navigational", "C) Transactional"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which change makes an SEO prompt stronger?", opts: ["A) Adding your business context, audience, your own data and the output format", "B) Making the prompt as short as possible", "C) Asking the AI to guarantee a top ranking"], ans: "A" },
      5 => { type: "multiple_choice", q: "An AI assistant says a keyword gets \"12,000 searches a month\". What should you do?", opts: ["A) Trust it, because AI knows search data", "B) Delete all the AI's keyword ideas", "C) Check the idea in a real tool such as Keyword Planner or Search Console"], ans: "C" },
      6 => { type: "multiple_choice", q: "Which two keywords usually belong in the same cluster?", opts: ["A) \"eggless cake recipe\" and \"eggless cake home delivery\"", "B) \"eggless cake\" and \"cake without egg\"", "C) \"eggless cake\" and \"bakery jobs near me\""], ans: "B" },
      7 => { type: "multiple_choice", q: "What is the best way to use a competitor content gap?", opts: ["A) Fill the gap with your own experience and checked facts", "B) Copy the best competitor article and change a few words", "C) Add every subtopic the AI suggests, even if readers do not need it"], ans: "A" },
      8 => { type: "true_false", q: "You can trust the sources and internal links in an AI-written content brief without opening them.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which practice makes an SEO page more helpful?", opts: ["A) Making 200 city pages where only the city name changes", "B) Asking AI to write customer reviews", "C) Adding your own photos and first-hand tips to an AI draft"], ans: "C" },
      10 => { type: "multiple_choice", q: "An AI says all its titles are under 60 characters. What should you do?", opts: ["A) Trust it, because AI counts well", "B) Remove all titles and write one by hand", "C) Count them yourself, for example with =LEN() in a spreadsheet"], ans: "C" },
      11 => { type: "multiple_choice", q: "The AI suggests alt text \"Two-tier chocolate cake\" for your photo. What should you do before you use it?", opts: ["A) Use it, because AI can see file names", "B) Check that it matches what the real photo shows", "C) Add more keywords to the alt text"], ans: "B" },
      12 => { type: "true_false", q: "Blocking a page in robots.txt is the right way to keep it out of Google's search results.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which local SEO action is against Google's review rules?", opts: ["A) Giving 10% off to customers who leave a 5-star review", "B) Showing a QR code that links to your review page", "C) Replying politely to a bad review"], ans: "A" },
      14 => { type: "multiple_choice", q: "According to Google, what do you need to appear in AI Overviews?", opts: ["A) A special AI text file on your site", "B) A paid AI ranking service", "C) An indexed page that can show a snippet, plus normal SEO basics"], ans: "C" },
      15 => { type: "multiple_choice", q: "The AI's SEO plan says a keyword gets 5,400 searches a month. What should you do?", opts: ["A) Check real demand in Search Console or a keyword planner", "B) Trust it, because AI knows search data", "C) Double the number to be safe"], ans: "A" }
    }

    AiForSeoContent::LESSONS.each do |position, data|
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
