require_relative "../text_to_image_generation_content"

namespace :content do
  desc "Create How AI Text-to-Image Generation Works course and populate all 18 lessons"
  task text_to_image_generation: :environment do
    description = "Learn how AI turns a sentence into a picture. Start with how computers store images, then autoencoders, VAEs and GANs, and move on to diffusion models, CLIP and Stable Diffusion. Learn prompts, guidance, samplers, inpainting, ControlNet and LoRA, and finish by generating and customising your own images."
    course = Course.find_or_create_by!(slug: "text-to-image-generation") do |c|
      c.title       = "How AI Text-to-Image Generation Works"
      c.description = description
      c.color       = "#ec4899"
      c.icon        = "🎨"
      c.position    = 112
      c.published   = true
    end
    course.update!(title: "How AI Text-to-Image Generation Works", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "Introduction to Generative AI",
      2 => "How Computers See Images (Pixels and Tensors)",
      3 => "Autoencoders",
      4 => "Variational Autoencoders (VAEs)",
      5 => "GANs: Generator vs Discriminator",
      6 => "What is a Diffusion Model?",
      7 => "Forward Process: Adding Noise",
      8 => "Reverse Process: Removing Noise",
      9 => "The U-Net Architecture",
      10 => "Latent Diffusion",
      11 => "Connecting Text and Images (CLIP)",
      12 => "How Stable Diffusion Works End to End",
      13 => "Prompts, Negative Prompts and Guidance Scale",
      14 => "Samplers and Sampling Steps",
      15 => "Image-to-Image and Inpainting",
      16 => "ControlNet",
      17 => "Fine-Tuning with LoRA and DreamBooth",
      18 => "Project: Generate and Customize Your Own Images"
    }

    descriptions = {
      1 => "What generative AI is, how it differs from discriminative models, and why it works by learning a data distribution.",
      2 => "Pixels, RGB channels, 0-255 and 0-1 values, and the (H, W, C), (C, H, W) and (N, C, H, W) shapes that image models use.",
      3 => "How an autoencoder squeezes an image through a small bottleneck and rebuilds it, trained with a reconstruction loss.",
      4 => "How a VAE encodes images as a mean and variance, samples codes with the reparameterisation trick, and uses a KL term to generate new images.",
      5 => "Learn how a generator and a discriminator compete in a GAN, how their losses work, and why mode collapse led most tools to diffusion.",
      6 => "See the big idea of diffusion: a fixed forward process turns images into noise, and a learned reverse process turns noise back into images.",
      7 => "Learn the noise schedule, beta and alpha_bar, and the shortcut formula that jumps from a clean image to any noise step.",
      8 => "Learn how the network predicts noise, how it is trained with an MSE loss, and how the sampling loop turns noise into a new image.",
      9 => "Follow a noisy image through the U-Net: the down path, the bottleneck, the up path, skip connections and the timestep embedding.",
      10 => "Learn why Stable Diffusion runs diffusion on a small 64x64x4 latent from a VAE instead of on 512x512 pixels, and how much work this saves.",
      11 => "See how CLIP trains an image encoder and a text encoder together with contrastive learning, so pictures and captions share one embedding space.",
      12 => "Put it all together: tokenizer, CLIP text encoder, random latent, U-Net with cross-attention, scheduler loop and VAE decoder, with diffusers code.",
      13 => "Build clear prompts, use negative prompts, and see how the guidance scale controls how closely the picture follows your words.",
      14 => "Compare DDPM, DDIM and Euler-style samplers, trade steps for time, and use seeds to make the same picture again.",
      15 => "Start from your own picture with image-to-image, control it with strength, and repaint or extend parts with inpainting and outpainting.",
      16 => "Use ControlNet to guide Stable Diffusion with edge maps, poses and depth maps, and learn how zero convolutions keep training safe.",
      17 => "Customise a model with LoRA's small low-rank add-ons and teach it a new subject with DreamBooth, using images you have the right to use.",
      18 => "Plan prompts, choose settings and seeds, generate and edit your own images, and share them responsibly."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does a generative model learn that lets it make new examples?", opts: ["A) Only the line that separates two classes", "B) Where real data usually lies (the data distribution), so it can sample new points from it", "C) A list of every training image, so it can copy one back"], ans: "B" },
      2 => { type: "multiple_choice", q: "A batch of 4 colour images, each 512 x 512, is ready for a PyTorch model. What is its shape?", opts: ["A) (512, 512, 3, 4)", "B) (4, 512, 512)", "C) (4, 3, 512, 512)"], ans: "C" },
      3 => { type: "true_false", q: "An autoencoder needs labelled images to train, because it must be told what each image shows.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "In a VAE, what does the reparameterisation trick do?", opts: ["A) It writes the code as z = mu + sigma x eps, so the randomness is in eps and gradients can flow through mu and sigma", "B) It removes the decoder, so the encoder can make new images on its own", "C) It sets the KL term to zero, so the latent space has gaps"], ans: "A" },
      5 => { type: "multiple_choice", q: "In a GAN, what is the generator trying to do?", opts: ["A) Decide whether an image is real or fake", "B) Make fake images that the discriminator scores as real", "C) Remove noise from an image step by step"], ans: "B" },
      6 => { type: "true_false", q: "In a diffusion model, the forward process (adding noise) is the part that the neural network learns.", opts: ["True", "False"], ans: "False" },
      7 => { type: "multiple_choice", q: "With the shortcut formula, how do you make the noisy image x_t at step t?", opts: ["A) x_t = sqrt(alpha_bar_t) * x0 + sqrt(1 - alpha_bar_t) * eps", "B) Add noise in a loop t times, because there is no shortcut", "C) x_t = x0 - beta_t * eps"], ans: "A" },
      8 => { type: "multiple_choice", q: "During training, what does the noise predictor's loss compare?", opts: ["A) The clean image with the noisy image", "B) Two images made from different seeds", "C) The predicted noise with the real noise that was added"], ans: "C" },
      9 => { type: "multiple_choice", q: "In a U-Net, what is the main job of the skip connections?", opts: ["A) They tell the network which timestep it is on", "B) They carry fine detail from the down path straight across to the up path of the same size", "C) They make the output image smaller than the input"], ans: "B" },
      10 => { type: "multiple_choice", q: "Stable Diffusion's VAE turns a 512x512x3 image into a 64x64x4 latent. About how many times fewer numbers does the latent have?", opts: ["A) 8 times fewer", "B) 64 times fewer", "C) 48 times fewer", "D) 4 times fewer"], ans: "C" },
      11 => { type: "true_false", q: "In CLIP training, each image is pulled towards its own caption and pushed away from the other captions in the same batch.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "In Stable Diffusion, which part runs many times, once for every sampling step?", opts: ["A) The U-Net, which predicts the noise in the latent", "B) The text encoder, which turns the prompt into vectors", "C) The VAE decoder, which turns the latent into pixels"], ans: "A" },
      13 => { type: "multiple_choice", q: "With classifier-free guidance and guidance scale w, how is the final noise prediction made?", opts: ["A) Only the prediction with the prompt is used, and w is ignored", "B) uncond + w × (cond − uncond)", "C) The average of the prompt and negative prompt predictions"], ans: "B" },
      14 => { type: "multiple_choice", q: "You raise the steps of a DDIM sampler from 50 to 200. What usually happens?", opts: ["A) It takes about four times longer, but the picture changes only a little", "B) The picture becomes four times better", "C) The seed stops working, so every run gives a new picture"], ans: "A" },
      15 => { type: "multiple_choice", q: "In image-to-image with 50 steps and strength 0.3, what does the pipeline do?", opts: ["A) It runs 50 steps from pure noise and ignores the start picture", "B) It keeps the start picture exactly the same", "C) It adds some noise to the start picture, then runs about 15 denoising steps"], ans: "C" },
      16 => { type: "multiple_choice", q: "Why do ControlNet's zero convolutions start with all weights and biases set to 0?", opts: ["A) To make the images darker at the start", "B) So the frozen U-Net works exactly as before when training begins", "C) To delete the prompt from the model", "D) Because the condition image must be all black"], ans: "B" },
      17 => { type: "multiple_choice", q: "A 768 x 768 layer gets a LoRA with rank 4. How many numbers does the LoRA train?", opts: ["A) 589,824", "B) 3,072", "C) 6,144", "D) 1,536"], ans: "C" },
      18 => { type: "true_false", q: "When an image is almost right, it is usually better to keep its seed and fix one part (for example with inpainting) than to change many settings at once.", opts: ["True", "False"], ans: "True" }
    }

    TextToImageGenerationContent::LESSONS.each do |position, data|
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
    course.course_lessons.where("position > ?", 18).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
