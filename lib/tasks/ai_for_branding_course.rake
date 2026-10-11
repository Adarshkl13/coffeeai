require_relative "../ai_for_branding_content"

namespace :content do
  desc "Create AI for Branding course and populate all 15 lessons"
  task ai_for_branding: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-branding") do |c|
      c.title       = "AI for Branding"
      c.description = "Use AI to build a clear, memorable brand for a small business. Define your positioning and personality, choose and check a name, create a logo, colours and fonts, write in a consistent brand voice, and set up a simple website and Google Business Profile."
      c.color       = "#60a5fa"
      c.icon        = "🎨"
      c.position    = 68
      c.published   = true
    end
    course.update!(description: "Use AI to build a clear, memorable brand for a small business. Define your positioning and personality, choose and check a name, create a logo, colours and fonts, write in a consistent brand voice, and set up a simple website and Google Business Profile.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What a Brand Is",
      2 => "Where AI Helps in Branding",
      3 => "Brand Strategy: Purpose, Audience and Positioning",
      4 => "Brand Personality and Values",
      5 => "Naming Your Business",
      6 => "Checking Names: Trademarks and Domains",
      7 => "Logos with AI and Design Tools",
      8 => "Colours, Fonts and Visual Style",
      9 => "Brand Voice and Messaging",
      10 => "A Simple Brand Guide",
      11 => "Building a Simple Website",
      12 => "Google Business Profile and Local Presence",
      13 => "Social Media Profiles and Templates",
      14 => "Keeping the Brand Consistent",
      15 => "Capstone: A Brand Kit for Lakshmi's Pickle Brand"
    }

    descriptions = {
      1 => "Learn the difference between a brand and a logo, and the four parts of a brand: promise, personality, positioning and look.",
      2 => "See where AI helps with names, ideas, mood boards and copy, and the risks you must check: generic ideas, copying, trademark clashes and image rights.",
      3 => "Write a purpose, describe a target customer, study competitors and draft a positioning statement with AI, then test it with real customers.",
      4 => "Describe your brand personality in plain words, back each value with a real action, and make a simple do and don't list.",
      5 => "Learn naming styles, use AI for a long list, shortlist with a score, and check sound and meaning in Malayalam, Hindi and English.",
      6 => "Run a first trademark search on IP India in the right classes, check domains and social handles, and learn when to use TM and ®.",
      7 => "Learn logo types, write a logo brief, explore ideas with AI image tools and Canva, and see why a designer redraws AI ideas.",
      8 => "Choose a small colour palette and a font pair, check text contrast with the WCAG 4.5:1 rule, and write a mini style guide.",
      9 => "Write a voice chart, test taglines and key messages, and build a voice card that keeps AI drafts sounding like your brand.",
      10 => "Put your logo rules, colours, fonts, voice and examples into a short brand guide with AI and Canva, then check every detail.",
      11 => "Choose a website builder, plan the pages a small business needs, draft the copy with AI and check every fact and claim before you publish.",
      12 => "Set up a Google Business Profile, hide a home address as a service-area business, keep your name, address and phone the same everywhere, and reply to reviews honestly.",
      13 => "Set up matching social media profiles, write bios and highlights with AI, and build a small set of post templates that keep every post on brand.",
      14 => "Keep your brand consistent with a checklist, a simple brand audit and customer feedback, and learn when to fix, refresh or rebrand.",
      15 => "Put the whole course together in a brand kit for Lakshmi's pickle brand, with a one-page summary, a master facts sheet and the checks only people can do."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which statement about a brand and a logo is correct?", opts: ["A) A brand is just a nice logo", "B) A logo is one part of a brand; the brand is what customers remember and tell others", "C) A small home business cannot have a brand without a logo"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool says a brand name is unique and available, you can use it without doing a trademark search.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Lakshmi's AI tool writes a customer persona for her brand. What should she do next?", opts: ["A) Test it by talking to 10 to 15 real customers who fit it", "B) Add the AI's market size figures to her plan", "C) Use it as fact, because AI has read a lot of data"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which is the best way to show the value \"honest\" for a pickle brand?", opts: ["A) Write \"We are honest\" on the label", "B) Say \"No. 1 pickle brand in India\"", "C) Print the full ingredient list and never buy or fake reviews"], ans: "C" },
      5 => { type: "multiple_choice", q: "Lakshmi's Hindi-speaking friend hears the name \"Pazhama\" as \"pyjama\". What does this check show?", opts: ["A) The name has a spelling mistake", "B) The name may sound funny to many customers, so it should be dropped", "C) The name is already a registered trademark"], ans: "B" },
      6 => { type: "multiple_choice", q: "Lakshmi's first IP India search shows no identical mark for \"Kochu Bharani\" in Class 29. What is the right next step?", opts: ["A) Print labels with the ® symbol", "B) Treat it as a first check only and ask a trademark attorney for a full search", "C) Stop checking, because the AI also said the name is free"], ans: "B" },
      7 => { type: "true_false", q: "An AI-made logo image is usually ready to print on jar labels and register as it is.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "What contrast ratio does WCAG level AA ask for normal text, such as the ingredients on a label?", opts: ["A) At least 4.5:1", "B) At least 2:1", "C) Any ratio, if the colours match the brand"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which tagline fits Kochu Bharani's honest, warm voice?", opts: ["A) Kerala's No. 1 Home Pickle", "B) No preservatives, only love", "C) Made the way Amma makes it."], ans: "C" },
      10 => { type: "multiple_choice", q: "Lakshmi asks AI to draft her brand guide from her notes. What should she check most carefully?", opts: ["A) That the guide is at least 30 pages long", "B) That every hex code and font name matches her source files exactly", "C) That the AI added words like \"premium\" to sound bigger"], ans: "B" },
      11 => { type: "multiple_choice", q: "An AI draft for Lakshmi's website says \"FSSAI approved pickles\". What should she do?", opts: ["A) Keep it, because it builds trust", "B) Replace it with her FSSAI registration number, shown clearly in the footer", "C) Change it to \"100% FSSAI certified quality\""], ans: "B" },
      12 => { type: "true_false", q: "A home-based business that delivers to customers must show its home address on its Google Business Profile.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Why does Lakshmi make five post templates for her social media?", opts: ["A) So she never needs real photos", "B) Because Instagram requires templates for business accounts", "C) So every post keeps the same look and voice, and only the photo and a few words change"], ans: "C" },
      14 => { type: "multiple_choice", q: "In a brand audit, which problem should Lakshmi fix first?", opts: ["A) An old phone number on her Google profile", "B) A logo she is a little bored of", "C) A post that got fewer likes than usual"], ans: "A" },
      15 => { type: "multiple_choice", q: "While reviewing her brand kit, the AI suggests adding \"Award-winning family recipe\". The recipe has won no award. What should Lakshmi do?", opts: ["A) Keep it, because customers like awards", "B) Delete it, because it is an invented claim that breaks her honest value", "C) Keep it, but in smaller text"], ans: "B" }
    }

    AiForBrandingContent::LESSONS.each do |position, data|
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
