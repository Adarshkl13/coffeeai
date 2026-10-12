require_relative "../text_to_video_generation_content"

namespace :content do
  desc "Create How AI Text-to-Video Generation Works course and populate all 17 lessons"
  task text_to_video_generation: :environment do
    description = "Learn how AI creates video from a text prompt. Understand frames, motion and why video is much harder than images, then see how video diffusion models, temporal attention and diffusion transformers keep frames consistent. Learn camera control, image-to-video, audio and lip sync, the main tools, and the ethics of deepfakes."
    course = Course.find_or_create_by!(slug: "text-to-video-generation") do |c|
      c.title       = "How AI Text-to-Video Generation Works"
      c.description = description
      c.color       = "#ef4444"
      c.icon        = "🎬"
      c.position    = 113
      c.published   = true
    end
    course.update!(title: "How AI Text-to-Video Generation Works", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "From Images to Video",
      2 => "Frames, FPS and Motion",
      3 => "Why Video Generation is Hard",
      4 => "Early Approaches to AI Video",
      5 => "Video Diffusion Models",
      6 => "Spatial and Temporal Attention",
      7 => "Diffusion Transformers (DiT)",
      8 => "Video Latents and Compression",
      9 => "Text Conditioning for Video",
      10 => "Keeping Frames Consistent",
      11 => "Camera Motion Control",
      12 => "Image-to-Video",
      13 => "Video-to-Video and Style Transfer",
      14 => "Adding Audio, Voice and Lip Sync",
      15 => "Popular Video Models and Tools",
      16 => "Limits, Ethics and Deepfakes",
      17 => "Project: Create a Short AI Video"
    }

    descriptions = {
      1 => "See a video as a stack of frames with shape (T, H, W, C) and learn what changes from text-to-image.",
      2 => "Learn frame rate, duration and raw size sums, and the idea of optical flow for motion between frames.",
      3 => "Understand the big problems of AI video: temporal consistency, compute, long-range coherence, physics and training data.",
      4 => "Explore frame-by-frame generation, GAN video, frame interpolation and image animation, and why diffusion took over.",
      5 => "Learn how video diffusion models clean a whole clip of frames together, starting from one block of 3D noise.",
      6 => "Compare attention inside one frame with attention across frames, and work out why factorised attention is cheaper.",
      7 => "See how a Diffusion Transformer cuts a video latent into spacetime patches and takes in the timestep and the text.",
      8 => "Learn how a video VAE squeezes a clip in time and space, and work out latent sizes yourself.",
      9 => "See how a text encoder and cross-attention turn your prompt into guidance for every frame, and how to write clear video prompts.",
      10 => "Learn how identity, objects and lighting stay the same across frames, using reference frames and a temporal smoothing demo.",
      11 => "Learn pan, tilt, zoom, dolly and orbit, and compare camera words in a prompt with explicit camera parameters.",
      12 => "Animate a still image: first-frame conditioning, how the image latent enters the model, and the motion strength trade-off.",
      13 => "Keep the motion of a real clip and change its style with partial noise and structure maps, and learn why per-frame styling flickers.",
      14 => "Add voice, music and sound effects with AI, match mouth shapes to speech with lip sync, and meet models that make sound with video.",
      15 => "Sort AI video tools into hosted apps, APIs, open-weight models and editors, and compare them on length, resolution, control, price and licence.",
      16 => "Learn what video models still get wrong, why consent matters for deepfakes, how watermarks and content credentials label AI video, and how to check a suspicious clip.",
      17 => "Plan and make a 20-second AI video: storyboard, shot prompts, a consistency plan, several takes, editing, sound and a clear AI label."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A video tensor has the shape (120, 720, 1280, 3) in the order (T, H, W, C). How many frames does it have?", opts: ["A) 3", "B) 720", "C) 120"], ans: "C" },
      2 => { type: "multiple_choice", q: "A clip runs at 24 fps for 5 seconds. How many frames does it have?", opts: ["A) 120", "B) 29", "C) 240"], ans: "A" },
      3 => { type: "true_false", q: "If every frame of an AI video looks good on its own, the video will always look good.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Why does a crossfade between two keyframes not create real motion?", opts: ["A) It needs a GAN to work", "B) It makes two faded copies of the object instead of moving it", "C) It lowers the frame rate of the video"], ans: "B" },
      5 => { type: "multiple_choice", q: "How does a video diffusion model add noise to a clip during training?", opts: ["A) It adds noise to the first frame only, then copies that frame", "B) It adds noise to each frame at a different, random noise level", "C) It adds one block of noise with the clip's shape, and all frames share one timestep"], ans: "C" },
      6 => { type: "multiple_choice", q: "What does temporal attention look at?", opts: ["A) The token at the same spot in every frame", "B) All the other tokens in the same frame", "C) Only the text tokens of the prompt", "D) Every token in every frame at once"], ans: "A" },
      7 => { type: "multiple_choice", q: "In a DiT, how does the timestep usually guide each block?", opts: ["A) It is added as an extra frame at the start of the clip", "B) Through adaLN, which makes a scale and a shift from the timestep", "C) It changes the patch size at every step"], ans: "B" },
      8 => { type: "true_false", q: "A video VAE with 8x compression in height and width and 4x in time (after the first frame) turns 81 frames at 480 x 832 into a latent with 21 frames of 60 x 104.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "In cross-attention inside a text-to-video model, where do the queries come from?", opts: ["A) From the text vectors made by the text encoder", "B) From the video tokens of the noisy clip", "C) From the VAE decoder after denoising"], ans: "B" },
      10 => { type: "true_false", q: "Temporal smoothing removes flicker with no downside, so it is safe to use strongly on every clip.", opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "Which camera move makes near objects grow faster than far objects, because the camera itself moves closer?", opts: ["A) Zoom in", "B) Pan right", "C) Dolly in"], ans: "C" },
      12 => { type: "multiple_choice", q: "In image-to-video, what usually happens when you turn the motion strength up very high?", opts: ["A) The first frame changes to match the prompt", "B) The clip gets longer but the motion stays the same", "C) Things move more, but the subject can drift away from the input picture"], ans: "C" },
      13 => { type: "multiple_choice", q: "Why does restyling each frame of a video on its own with an image model often cause flicker?", opts: ["A) Each frame makes its own random choices, so textures jump between frames", "B) Image models cannot read video files", "C) The edge maps remove all the motion"], ans: "A" },
      14 => { type: "true_false", q: "At 24 frames per second, a mouth that is 3 frames late is about 125 milliseconds out of sync with the voice.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "A tool charges $0.10 per second of video. You want a 30-second video and plan to make 3 takes of every shot. About how much will you spend?", opts: ["A) $3", "B) $9", "C) $30"], ans: "B" },
      16 => { type: "true_false", q: "If a video has no content credentials and no AI label, you can be sure it is real.", opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "In your shot prompts, which parts should stay exactly the same in every shot to keep the video consistent?", opts: ["A) The action and the camera move", "B) The shot length and the music", "C) The subject and the style"], ans: "C" }
    }

    TextToVideoGenerationContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

      e = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |x|
        x.exercise_type = e[:type]; x.question = e[:q]
        x.options = e[:opts]; x.correct_answer = e[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end
    course.course_lessons.where("position > ?", 17).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
