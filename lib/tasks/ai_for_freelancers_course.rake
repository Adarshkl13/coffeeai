require_relative "../ai_for_freelancers_content"

namespace :content do
  desc "Create AI for Freelancers course and populate all 15 lessons"
  task ai_for_freelancers: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-freelancers") do |c|
      c.title       = "AI for Freelancers"
      c.description = "Use AI to win and keep freelance clients. Choose your niche and packages, build a portfolio, write proposals that win, price your work properly, handle contracts and client messages, and manage invoices and taxes in general terms."
      c.color       = "#1d4ed8"
      c.icon        = "💼"
      c.position    = 69
      c.published   = true
    end
    course.update!(description: "Use AI to win and keep freelance clients. Choose your niche and packages, build a portfolio, write proposals that win, price your work properly, handle contracts and client messages, and manage invoices and taxes in general terms.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Freelancing Works",
      2 => "Where AI Helps Freelancers",
      3 => "Choosing Your Niche and Services",
      4 => "Building a Portfolio",
      5 => "Finding Clients",
      6 => "Writing Winning Proposals",
      7 => "Pricing Your Work",
      8 => "Discovery Calls and Scoping",
      9 => "Contracts and Terms",
      10 => "Client Communication",
      11 => "Managing Projects and Time",
      12 => "Invoices, Payments and Taxes",
      13 => "Getting Repeat Work and Referrals",
      14 => "Growing and Protecting Yourself",
      15 => "Capstone: A Freelance Business Kit for Sneha"
    }

    descriptions = {
      1 => "Learn the basic words of freelance work, how platforms and direct work differ, and how to plan for uneven income.",
      2 => "See where AI saves freelancers time on proposals, research, messages and admin, and how to manage the risks.",
      3 => "Choose a clear niche from your skills and real demand, and turn your work into service packages.",
      4 => "Build an honest portfolio with short case studies, client permission and clear labels for concept work and AI use.",
      5 => "Find clients through Upwork, Fiverr, LinkedIn, referrals and warm outreach, with AI helping you draft profiles and messages.",
      6 => "Read a client brief, ask good questions and write a clear proposal with scope, honest proof, one price and a next step.",
      7 => "Compare hourly, project and value pricing, work out your hourly rate from real costs and billable hours, and use it to quote a package.",
      8 => "Plan a discovery call, turn your notes into a scope document with AI, and write a clear list of what is not included.",
      9 => "Learn the main contract terms: scope, staged payments, revisions, ownership, cancellation and late fees, and why a lawyer must check your template.",
      10 => "Send clear updates, handle difficult messages, and deal with scope creep by offering priced options, with AI drafts in your own voice.",
      11 => "Split projects into tasks with an hour budget, track your time every week and plan deadlines with AI.",
      12 => "Write clear invoices, get paid by clients in India and abroad, and learn GST, the LUT, TDS, advance tax and the presumptive scheme in general words.",
      13 => "Turn one project into repeat work with planned follow-ups, honest testimonials used with permission, referrals and retainers.",
      14 => "Raise your rates at the right time, avoid burnout, keep client data safe and tell clients honestly how you use AI.",
      15 => "Bring the whole course together into a freelance business kit for Sneha, then start your own with AI."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Sneha earned ₹18,000, ₹42,000, ₹25,000, ₹60,000, ₹12,000 and ₹57,000 in her first six months. What should she use to plan her budget?", opts: ["A) Her best month, ₹60,000", "B) Her average month, about ₹35,667", "C) Her goal of ₹60,000 a month"], ans: "B" },
      2 => { type: "multiple_choice", q: "Sneha wants AI to draft a reply to a new café client. What is the safest way?", opts: ["A) Paste the client's full email thread, phone number and private plans", "B) Ask AI to write a reply with no facts, then send it without reading", "C) Give AI her package facts and the client's question, then check every promise before sending"], ans: "C" },
      3 => { type: "true_false", q: "If an AI tool says there are 5,000 cafés in Kerala that need a logo, you can use that number as a fact in your business plan.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Sneha designed the Kayal Foods packs while working at an agency. What must she do before she shows them in her portfolio?", opts: ["A) Get written permission and state her exact role", "B) Nothing, because she did the design", "C) Add a sales growth number to make it look stronger"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which is a good warm outreach message?", opts: ["A) A long message to 500 strangers listing every service", "B) A short, personal message to a past client with one clear ask", "C) A message that says you have helped over 30 brands, even if you have not"], ans: "B" },
      6 => { type: "multiple_choice", q: "Karthik's brief asks for a logo, menu, cups and signs. Sneha's Brand Identity package does not cover cups and signs. What should her proposal do?", opts: ["A) Promise everything so she wins the job", "B) List cups and signs under \"Not included\" and offer to quote them separately", "C) Leave them out and say nothing"], ans: "B" },
      7 => { type: "multiple_choice", q: "Sneha needs ₹60,000 a month. She works 160 hours, but only 80 are billable. What is her hourly rate at her goal?", opts: ["A) ₹375", "B) ₹715", "C) ₹750"], ans: "C" },
      8 => { type: "true_false", q: "A scope document should list only what you will deliver. Listing what is not included can confuse the client.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which contract term best protects Sneha if the last payment never arrives?", opts: ["A) Rights to the final designs pass to the client on full payment", "B) The client owns all designs from the first day", "C) The client may cancel at any time for a full refund"], ans: "A" },
      10 => { type: "multiple_choice", q: "Karthik asks for three extra menus (about 15 hours) that are not in the scope. What is the best reply?", opts: ["A) \"Sure, no problem!\" and do them for free", "B) \"No. That is not in the contract.\"", "C) Thank him, say they are outside the scope, and offer priced options with a change order"], ans: "C" },
      11 => { type: "multiple_choice", q: "Sneha planned 55 hours for a ₹45,000 Brand Identity project. What happens if the project takes 63 hours?", opts: ["A) Her real hourly rate stays at ₹818", "B) Her real hourly rate falls to about ₹714, below her ₹715 minimum", "C) The client must pay more for the extra hours"], ans: "B" },
      12 => { type: "true_false", q: "An AI tool's answer about TDS rates and tax section numbers is safe to use without checking with a CA.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which testimonial is safe for Sneha to use on her website?", opts: ["A) Mariam's own words, shortened, and approved by Mariam in writing", "B) A quote the AI wrote that sounds like a happy client", "C) One quote made by mixing the words of two different clients"], ans: "A" },
      14 => { type: "multiple_choice", q: "Sneha wants AI help to reply to a client's email. What should she do first?", opts: ["A) Paste the full email, with the client's phone number and sales figures", "B) Never use AI for any client work", "C) Remove names, numbers and private details, and follow the client's rules on AI use"], ans: "C" },
      15 => { type: "multiple_choice", q: "An AI draft of Sneha's proposal says \"I have designed for over 20 tea brands in the UK.\" What should she do?", opts: ["A) Keep it, because it makes the proposal stronger", "B) Delete it and use only her real proof", "C) Change 20 to 5 so it sounds more modest"], ans: "B" }
    }

    AiForFreelancersContent::LESSONS.each do |position, data|
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
