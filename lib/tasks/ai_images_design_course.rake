require_relative "../ai_images_design_content"

namespace :content do
  desc "Create AI Images and Design course and populate all 15 lessons"
  task ai_images_design: :environment do
    course = Course.find_or_create_by!(slug: "ai-images-design") do |c|
      c.title       = "AI Images and Design"
      c.description = "Create and edit images with AI and turn them into good designs. Write strong image prompts, keep a consistent style, edit and extend images, make social graphics and marketing visuals, learn basic design rules, and handle copyright, labels and bias responsibly."
      c.color       = "#f472b6"
      c.icon        = "🖼️"
      c.position    = 84
      c.published   = true
    end
    course.update!(description: "Create and edit images with AI and turn them into good designs. Write strong image prompts, keep a consistent style, edit and extend images, make social graphics and marketing visuals, learn basic design rules, and handle copyright, labels and bias responsibly.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How AI Image Generators Work",
      2 => "AI Image Tools and Where They Help",
      3 => "Copyright, Likeness and Rules",
      4 => "Writing Image Prompts",
      5 => "Styles, References and Consistency",
      6 => "Editing Images with AI",
      7 => "Text in Images and Typography",
      8 => "Social Media Graphics",
      9 => "Product and Marketing Visuals",
      10 => "Design Principles for Non-Designers",
      11 => "Presentations, Posters and Print",
      12 => "Labels, Content Credentials and Honesty",
      13 => "Bias and Representation",
      14 => "A Design Workflow",
      15 => "Capstone: A Visual Campaign for Sweet Crumbs"
    }

    descriptions = {
      1 => "Learn how diffusion image generators turn random noise into a picture, and the three ways to use them: text-to-image, image-to-image and editing.",
      2 => "Meet the four main types of AI image tools, what each is good at and where it fails, and choose a small tool kit for a real campaign.",
      3 => "Understand who owns AI images, the training data debate, trademarks, people's faces and India's new rules on AI-made content. General information, not legal advice.",
      4 => "Write strong image prompts with six parts: subject, style, composition, lighting, colours and aspect ratio, and start a prompt library.",
      5 => "Keep AI images consistent with a style block, reference images, a character sheet and exact brand colours finished in Canva.",
      6 => "Use AI to inpaint, outpaint, remove backgrounds and upscale images, while keeping product photos true to the real product.",
      7 => "Learn why AI image tools get text wrong, and add every word yourself in a design tool with your brand fonts and a clear type plan.",
      8 => "Make social media graphics in the right sizes and safe areas, and build templates, carousels and a brand kit for a real campaign.",
      9 => "Create honest product photos, mock-ups and lifestyle scenes, and learn when to add labels. General information on Indian advertising rules, not legal advice.",
      10 => "Use hierarchy, contrast, alignment, spacing and colour to make clear designs, and check which brand colour pairs pass WCAG contrast ratios.",
      11 => "Set up slides and printed posters: pixel sizes at 300 PPI, bleed and safe zones, making AI images big enough for print, RGB and CMYK, and checking files with your printer.",
      12 => "Label AI images honestly, understand Content Credentials (C2PA) and India's rules on AI-made content, and stay away from deepfakes and fake reviews. General information, not legal advice.",
      13 => "Spot stereotypes in AI images, test a batch of results and write prompts for respectful, true-to-life images of people in India.",
      14 => "Run design work with a simple workflow: a one-page brief, numbered versions, clear feedback, file names that sort and a shared asset library.",
      15 => "Plan the full Sweet Crumbs Christmas campaign: a brief, mood board prompts, 5 social graphics, an A3 poster, alt text and a rights and disclosure checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "How does a diffusion image generator make a new image?", opts: ["A) It searches the internet and pastes parts of real photos together", "B) It starts from random noise and removes the noise step by step, guided by your prompt", "C) It draws the image line by line from a stored copy of each photo"], ans: "B" },
      2 => { type: "multiple_choice", q: "Sweet Crumbs needs a photo of its eggless plum cake for the WhatsApp catalogue. What is the best choice?", opts: ["A) A real photo of the cake, with AI used only to clean the background", "B) A text-to-image picture of a nice plum cake", "C) An AI image of a cake with the price written by the AI"], ans: "A" },
      3 => { type: "true_false", q: "According to the US Copyright Office report of January 2025, a very detailed prompt is enough to make a purely AI-generated image protected by copyright.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Which phrase describes the composition of an image?", opts: ["A) soft window light from the left", "B) loose watercolour illustration", "C) top-down flat lay with empty space at the top for a headline"], ans: "C" },
      5 => { type: "multiple_choice", q: "Diya wants the exact Sweet Crumbs Berry Red (#B8323A) on the price tag of a poster. What should she do?", opts: ["A) Put the hex code in the image prompt and trust the result", "B) Name the colour in words in the prompt, then add the price tag in Canva with the exact hex code", "C) Ask the AI to paint the price tag in any red"], ans: "B" },
      6 => { type: "multiple_choice", q: "Diya uses AI to edit a photo of the real 1 kg plum cake for the catalogue. Which edit is NOT OK?", opts: ["A) Replacing the messy shelf behind the cake with a cream wall", "B) Adding more cherries and cashews on top of the cake", "C) Extending the table so the photo fits a 4:5 post"], ans: "B" },
      7 => { type: "true_false", q: "The safest way to put prices and dates on an AI poster is to type them into the image prompt and check the result once.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Where should Diya put the title on a 1080 x 1920 px Reel cover?", opts: ["A) In the middle, because the profile grid shows only the middle 3:4 part", "B) At the very top, where people look first", "C) At the very bottom, next to the buttons"], ans: "A" },
      9 => { type: "multiple_choice", q: "Sweet Crumbs wants a lifestyle scene of a Christmas table. What is the honest way to make it?", opts: ["A) Ask AI to make the whole scene, including the cake and smiling customers", "B) Use a stock photo of another bakery's cake", "C) Make the table scene with AI, place the real cake photo in it, and add a short AI label"], ans: "C" },
      10 => { type: "multiple_choice", q: "Butter Gold text on Cream has a contrast ratio of 1.99:1. What does this mean?", opts: ["A) It passes WCAG AA for normal text", "B) It fails even the 3:1 minimum for large text, so use it only for stars and borders", "C) It passes if the text is bold"], ans: "B" },
      11 => { type: "multiple_choice", q: "Sweet Crumbs' A3 poster (297 x 420 mm) needs 3 mm bleed on each side. What size should the file be at 300 PPI?", opts: ["A) 3508 x 4961 px", "B) 3579 x 5031 px", "C) 1080 x 1350 px"], ans: "B" },
      12 => { type: "multiple_choice", q: "Diya posts a real photo of the plum cake on an AI-made kitchen background. What should she do?", opts: ["A) Use the platform's AI label setting and say in the caption that the cake is real and the background is AI-made", "B) Nothing, because the cake is real", "C) Remove the Content Credentials so the post looks more natural"], ans: "A" },
      13 => { type: "true_false", q: "To check an AI image prompt for bias, it is enough to look at the single best image it made.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which file name follows a good naming pattern?", opts: ["A) final poster NEW (2).png", "B) poster.png", "C) 2026-12_xmas_story-cover_1080x1920_v03.png"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the Sweet Crumbs campaign, which part of a design may AI make?", opts: ["A) The plum cake itself, so it looks perfect", "B) The background or a decorative border, with the real cake photo and logo added in Canva", "C) The logo, redrawn in a new festive style"], ans: "B" }
    }

    AiImagesDesignContent::LESSONS.each do |position, data|
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
