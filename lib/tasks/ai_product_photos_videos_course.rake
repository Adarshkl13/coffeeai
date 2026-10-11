require_relative "../ai_product_photos_videos_content"

namespace :content do
  desc "Create AI Product Photos and Videos course and populate all 15 lessons"
  task ai_product_photos_videos: :environment do
    course = Course.find_or_create_by!(slug: "ai-product-photos-videos") do |c|
      c.title       = "AI Product Photos and Videos"
      c.description = "Use AI tools to create product photos and videos that sell, without misleading buyers. Plan shoots, remove backgrounds, create lifestyle scenes, make short videos, meet marketplace image rules and test what works."
      c.color       = "#34d399"
      c.icon        = "📸"
      c.position    = 63
      c.published   = true
    end
    course.update!(description: "Use AI tools to create product photos and videos that sell, without misleading buyers. Plan shoots, remove backgrounds, create lifestyle scenes, make short videos, meet marketplace image rules and test what works.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Product Visuals Matter",
      2 => "Where AI Helps with Visuals",
      3 => "Planning Your Product Shots",
      4 => "Shooting with a Phone",
      5 => "Background Removal and Clean Main Images",
      6 => "AI Lifestyle and Scene Images",
      7 => "Editing and Retouching Honestly",
      8 => "Infographics and Text on Images",
      9 => "Short Product Videos",
      10 => "Turning Images into Video with AI",
      11 => "Models, Try-On and People in Images",
      12 => "Marketplace and Ad Image Rules",
      13 => "Testing Which Visuals Work",
      14 => "Copyright, Trademarks and AI Images",
      15 => "Capstone: A Visual Pack for a New Product"
    }

    descriptions = {
      1 => "Learn how the main image, gallery and video help buyers decide, and why product pictures must look good on a small phone screen and match the real product.",
      2 => "See which visual jobs AI can do, from background removal to video, how risky each one is, and what you must check after every AI edit.",
      3 => "Turn buyer questions into a shot list with the right angles, scale and label shots, and use AI to draft the list before you check it.",
      4 => "Set up a low-budget phone studio with window light, a white sweep and a tripod, and keep every photo sharp, true to colour and consistent.",
      5 => "Remove backgrounds safely, check edges and pure white, work out frame fill and prepare a clean main image that meets current marketplace rules.",
      6 => "Write scene briefs and image tool prompts to place your real product in festive or lifestyle scenes, then check that the product stays exactly the same.",
      7 => "Fix colour with a white card, remove dust and crumbs safely with AI tools, and learn which edits are honest and which ones mislead buyers.",
      8 => "Plan \"what's inside\" images, size graphics, size charts and comparisons from a checked fact sheet, and make the text readable on a small phone.",
      9 => "Write a timed 15 to 30 second script and shot list, film the real product and add captions that are readable and true.",
      10 => "Turn photos into video with slideshows, simple motion or AI tools, write motion prompts that keep the product still, and check every frame.",
      11 => "Choose between real models, AI models and virtual try-on, keep the garment exact, and get written consent before you use anyone's face or body.",
      12 => "Check images against marketplace and ad rules, and learn how AI labels, hidden AI tags and India's 2026 rules on AI content affect sellers.",
      13 => "Test main images fairly, calculate CTR, conversion rate and a p-value in a spreadsheet, and avoid calling a winner from small numbers.",
      14 => "Learn who owns product photos and AI images in India and the US, avoid copying others' work and logos, and act when someone copies you.",
      15 => "Build a complete visual pack for a new product: shot list, image briefs, AI edit plan, video script, rules checklist and test plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is the main job of a product's main image in search results?", opts: ["A) To show a sale offer in big text", "B) To win the click by showing exactly what the buyer gets", "C) To show the product in a festive scene with props"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to let an AI tool add two extra sweets to a gift box photo if it makes the box look fuller.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Why should a shot list start from the questions buyers ask?", opts: ["A) So every photo answers something a buyer needs to know before buying", "B) So the shoot uses as many props as possible", "C) So the AI tool can invent extra features"], ans: "A" },
      4 => { type: "multiple_choice", q: "Asha's maroon box looks brown under a kitchen tube light and a yellow bulb. What is the best fix?", opts: ["A) Add a warm filter in the photo app", "B) Use the phone flash", "C) Turn off room lights, use soft window light and check a white card in the photo"], ans: "C" },
      5 => { type: "multiple_choice", q: "A product is 1,500 px wide. What square crop makes it fill about 85% of the image?", opts: ["A) 1,275 px", "B) 1,765 px", "C) 2,000 px"], ans: "B" },
      6 => { type: "multiple_choice", q: "Asha wants a festive table scene for her gift box. Which method keeps the real product exact?", opts: ["A) Ask an AI tool to create \"a maroon Diwali gift box with 12 sweets\" from words", "B) Ask an AI tool to \"make the photo premium and festive\"", "C) Cut out her real photo and let AI make only the background"], ans: "C" },
      7 => { type: "multiple_choice", q: "One nankhatai in Asha's photo has a crack. What is the honest fix?", opts: ["A) Swap in another normal piece from the batch and reshoot", "B) Paint over the crack with an AI remove tool", "C) Make the piece a little bigger so the crack is less visible"], ans: "A" },
      8 => { type: "true_false", q: "Every callout on an infographic should come from a checked fact sheet, such as the product label and recipe sheet.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "Asha has 200 boxes in stock. Which caption should she leave out of her 15-second video?", opts: ["A) \"12 pieces, 4 kinds\"", "B) \"Only 3 boxes left!\"", "C) \"Best within 10 days\""], ans: "B" },
      10 => { type: "multiple_choice", q: "An AI video clip is 5 seconds long at 24 frames per second. How many frames must you check?", opts: ["A) 29", "B) 240", "C) 120"], ans: "C" },
      11 => { type: "multiple_choice", q: "Imran made an AI model image of the kurta set from his flat lay photo. Which text is honest to put near it?", opts: ["A) Model is 5 ft 6 in and wears size M", "B) AI-generated model image. Fit may differ. Please check the size chart.", "C) No text is needed because the image looks real"], ans: "B" },
      12 => { type: "true_false", q: "If an AI tool adds a hidden AI tag to your image, you should remove it before uploading to Google Merchant Center.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Image A: 30 orders from 1,200 visits. Image B: 38 orders from 1,150 visits, in a different week. What is the best conclusion?", opts: ["A) B converts at 3.3% against 2.5%, but this is not proof. Run a fair test in the same weeks.", "B) B is 32% better, so the test is finished", "C) A is better because it had more visits"], ans: "A" },
      14 => { type: "multiple_choice", q: "An AI tool adds a famous soft drink bottle to Asha's festive scene. What should she do?", opts: ["A) Keep it, because the scene looks more real", "B) Blur the logo a little", "C) Remove it, because another brand's trademark should not appear in her image"], ans: "C" },
      15 => { type: "multiple_choice", q: "In a visual pack, which image should never be the main image?", opts: ["A) The open box on pure white with all 12 pieces", "B) The real box in an AI-made festive table scene", "C) A clean photo with the background removed"], ans: "B" }
    }

    AiProductPhotosVideosContent::LESSONS.each do |position, data|
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
