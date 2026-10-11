require_relative "../computer_vision_content"

namespace :content do
  desc "Create Computer Vision course and populate all 22 lessons"
  task computer_vision: :environment do
    course = Course.find_or_create_by!(slug: "computer-vision") do |c|
      c.title       = "Computer Vision"
      c.description = "Learn how computers see. Work with pixels and colours, apply filters and edge detection, understand convolutional neural networks, and learn image classification, object detection, segmentation and today's vision-language models."
      c.color       = "#ec4899"
      c.icon        = "👁️"
      c.position    = 31
      c.published   = true
    end
    course.update!(description: "Learn how computers see. Work with pixels and colours, apply filters and edge detection, understand convolutional neural networks, and learn image classification, object detection, segmentation and today's vision-language models.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is Computer Vision?",
      2 => "Pixels and Grayscale Images",
      3 => "Colour Images and Channels",
      4 => "Image Operations",
      5 => "Histograms and Thresholding",
      6 => "Filters and Neighbourhoods",
      7 => "Convolution",
      8 => "Edge Detection",
      9 => "Features and Matching",
      10 => "Image Processing Libraries",
      11 => "From Pixels to Predictions",
      12 => "Convolutional Neural Networks",
      13 => "Pooling and CNN Architecture",
      14 => "Training an Image Classifier",
      15 => "Transfer Learning",
      16 => "Vision Transformers",
      17 => "Object Detection",
      18 => "Image Segmentation",
      19 => "Images and Text Together",
      20 => "Vision-Language Models",
      21 => "Responsible Computer Vision",
      22 => "Capstone: Build a Tiny Digit Recogniser"
    }

    descriptions = {
      1 => "Learn what computer vision is, where it is used, and the three main tasks: classification, detection and segmentation.",
      2 => "See how a grayscale image is a grid of numbers from 0 to 255, and learn to read and change pixels by row and column.",
      3 => "Learn how colour images store red, green and blue channels, how to turn them into grayscale, and what HSV means.",
      4 => "Change brightness and contrast, invert, crop, resize, flip and rotate images with a few lines of Python.",
      5 => "Build a histogram of pixel values and use a threshold, including Otsu's method, to make black-and-white images.",
      6 => "Look at a pixel and its neighbours. Remove noise with the mean (box) filter and the median filter.",
      7 => "Slide a 3x3 kernel over an image and multiply and add. Learn about padding and stride, and explore kernels in an interactive tool.",
      8 => "Find edges as big changes in brightness. Use Sobel kernels, measure edge strength and learn the steps of the Canny detector.",
      9 => "Find corners and keypoints, describe them with numbers and match them between photos, as in a panorama.",
      10 => "Use Pillow, OpenCV and NumPy for real images: open, resize, blur, find edges and avoid common mistakes.",
      11 => "See image classification as a function from pixels to a label, and build a tiny classifier that learns from labelled examples.",
      12 => "Learn how CNNs learn their own kernels, build feature maps with ReLU, and go from edges to shapes to objects.",
      13 => "Use max pooling, flatten and a final classifier layer to build a full CNN, and meet LeNet, AlexNet and ResNet.",
      14 => "Train an image classifier with train, validation and test splits, watch loss and accuracy, and fight overfitting with data augmentation.",
      15 => "Reuse a pre-trained model: freeze the backbone, train a new head, and fine-tune when you have more data.",
      16 => "Cut images into patches, turn them into tokens, and see how attention in a Vision Transformer compares with a CNN.",
      17 => "Find objects with bounding boxes, measure box overlap with IoU, and remove duplicate boxes with non-maximum suppression.",
      18 => "Label every pixel with semantic and instance segmentation, and score masks with pixel accuracy and IoU.",
      19 => "Learn how CLIP puts images and text in one embedding space for zero-shot classification and image search.",
      20 => "See what vision-language models like Claude do well and where they fail, and send an image with the Anthropic API.",
      21 => "Learn about dataset bias, face recognition risks, privacy and consent, and how to check a model group by group.",
      22 => "Build a tiny digit recogniser from start to end and read its accuracy and confusion matrix."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which task draws a box around each object and gives it a label?", opts: ["A) Classification", "B) Object detection", "C) Segmentation"], ans: "B" },
      2 => { type: "true_false", q: "In an 8-bit grayscale image, the value 0 means white and 255 means black.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Why does the grayscale formula give green the biggest weight?", opts: ["A) Our eyes see green as brighter than red or blue", "B) Green is the first channel in an RGB pixel", "C) Green values can go higher than 255"], ans: "A" },
      4 => { type: "multiple_choice", q: "You flip an image from left to right. What happens to the pixel values?", opts: ["A) They all get brighter", "B) Each one becomes 255 minus the old value", "C) They stay the same, but they move to new places"], ans: "C" },
      5 => { type: "multiple_choice", q: "You use a threshold of 100. Pixels above the threshold become white. What happens to a pixel with value 150?", opts: ["A) It becomes black (0)", "B) It becomes white (255)", "C) It stays 150"], ans: "B" },
      6 => { type: "multiple_choice", q: "A scanned page has random pure white and pure black dots. Which filter removes them best and keeps the edges sharp?", opts: ["A) A median filter", "B) A mean (box) filter", "C) A sharpen kernel"], ans: "A" },
      7 => { type: "multiple_choice", q: "A 3x3 kernel slides over a 7x7 image with no padding and stride 1. What size is the output?", opts: ["A) 7x7", "B) 3x3", "C) 5x5"], ans: "C" },
      8 => { type: "true_false", q: "The Sobel X kernel finds horizontal edges best, like the top edge of a table.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Why do corners make better keypoints than points on a straight edge?", opts: ["A) A corner changes when you move in any direction, so its position is exact", "B) Corners are always brighter than edges", "C) Edges cannot be stored in a descriptor"], ans: "A" },
      10 => { type: "multiple_choice", q: "In which channel order does OpenCV's cv2.imread return colour pixels?", opts: ["A) RGB", "B) BGR", "C) HSV"], ans: "B" },
      11 => { type: "multiple_choice", q: "Why do hand-written rules often fail for image classification?", opts: ["A) Computers cannot store rules", "B) Real images vary in position, size, light and style, so the rules miss many cases", "C) Rules only work on colour images"], ans: "B" },
      12 => { type: "multiple_choice", q: "In a CNN, where do the kernel numbers come from?", opts: ["A) They are learned from labelled examples during training", "B) A person types them in by hand", "C) They are always the Sobel kernels"], ans: "A" },
      13 => { type: "multiple_choice", q: "What does 2×2 max pooling with stride 2 do to a 28×28 feature map?", opts: ["A) It makes it 56×56", "B) It keeps it 28×28 but removes negative numbers", "C) It makes it 14×14 by keeping the biggest value in each 2×2 block"], ans: "C" },
      14 => { type: "true_false", q: "If training accuracy is 100% but validation accuracy is much lower, the model is probably overfitting.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Why does transfer learning need less labelled data?", opts: ["A) It skips training completely", "B) The pre-trained backbone already knows useful features, so only a small new head must be learned", "C) It uses lower quality images"], ans: "B" },
      16 => { type: "true_false", q: "A Vision Transformer does not need position information, because attention already knows where each patch came from.", opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "Two boxes each have an area of 16. They overlap in an area of 4. What is their IoU?", opts: ["A) 4 ÷ 16 = 0.25", "B) 4 ÷ 32 = 0.125", "C) 4 ÷ 28 ≈ 0.14"], ans: "C" },
      18 => { type: "multiple_choice", q: "A photo shows three dogs. Which kind of segmentation gives each dog its own id?", opts: ["A) Instance segmentation", "B) Semantic segmentation", "C) Image classification"], ans: "A" },
      19 => { type: "true_false", q: "With a CLIP-style model, you must retrain the model before you can use a new label such as \"a photo of a boat\".", opts: ["True", "False"], ans: "False" },
      20 => { type: "multiple_choice", q: "In the Anthropic API, how do you send a PNG image as base64?", opts: ["A) Put the base64 text inside the system prompt", "B) Add a content block with type \"image\" and a source with type \"base64\", media_type \"image/png\" and the data", "C) Set max_tokens to the size of the image"], ans: "B" },
      21 => { type: "multiple_choice", q: "A face model has 97% accuracy overall. What should you check next?", opts: ["A) Accuracy and error rates for each group, with the number of test images per group", "B) Nothing, because 97% is high enough", "C) Only the speed of the model"], ans: "A" },
      22 => { type: "multiple_choice", q: "In a confusion matrix, what does a large number in row 8, column 0 mean?", opts: ["A) The digit 0 is always predicted correctly", "B) There are 8 test images of the digit 0", "C) Images of 8 are often predicted as 0"], ans: "C" }
    }

    ComputerVisionContent::LESSONS.each do |position, data|
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

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
