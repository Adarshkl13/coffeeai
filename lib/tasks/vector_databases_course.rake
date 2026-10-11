require_relative "../vector_databases_content"

namespace :content do
  desc "Create Vector Databases (Qdrant) course and populate all 20 lessons"
  task vector_databases: :environment do
    course = Course.find_or_create_by!(slug: "vector-databases") do |c|
      c.title       = "Vector Databases (Qdrant)"
      c.description = "Learn what embeddings, dimensions and similarity metrics are. Then store and search vectors in Qdrant. See how HNSW and IVF indexes make search fast, and use vector search for semantic search and RAG in your own hands-on Vector Lab."
      c.color       = "#ec4899"
      c.icon        = "🧭"
      c.position    = 24
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Vector Databases?",
      2 => "What Is an Embedding?",
      3 => "Dimensions and Embedding Models",
      4 => "Similarity Metrics: Cosine, Dot Product, Euclidean",
      5 => "Normalisation and Choosing a Metric",
      6 => "Meet Qdrant: Collections, Points and Payloads",
      7 => "Creating Collections and Adding Points",
      8 => "Searching: Top-k, Scores and Thresholds",
      9 => "Filtering with Payloads",
      10 => "Vector Lab: Your Own Collection",
      11 => "Updating, Deleting and Re-embedding",
      12 => "Exact vs Approximate Search",
      13 => "HNSW: Searching a Graph of Neighbours",
      14 => "IVF: Searching by Clusters",
      15 => "Quantisation: Smaller Vectors, Faster Search",
      16 => "Measuring Recall and Latency",
      17 => "Semantic Search in Practice",
      18 => "Vectors in RAG",
      19 => "Hybrid Search: Dense + Sparse",
      20 => "Capstone: Semantic FAQ Search in the Vector Lab",

    }

    descriptions = {
      1 => "See why keyword search misses meaning, and what a vector database adds to a plain list of numbers.",
      2 => "Turn text into vectors and compare sentences in a live similarity playground. Learn where embeddings do not work well.",
      3 => "Choose an embedding model and learn how dimensions affect memory use. Never mix vectors from different models.",
      4 => "Drag vectors on a grid to see how cosine similarity, dot product and Euclidean distance work.",
      5 => "Learn why the three metrics agree when vectors are normalised. Use the metric your model was trained for.",
      6 => "Learn the main parts of Qdrant: collections, points, vectors, IDs and payloads.",
      7 => "Create collections with the right size and distance. Upsert points with the REST API and the Python client.",
      8 => "Run nearest-neighbour searches, choose top-k, read scores and set score thresholds.",
      9 => "Combine vector search with payload filters using must, should and must_not. Index the fields you filter on.",
      10 => "Work with your own Qdrant collections: choose metrics, add text, look at embeddings and compare search results.",
      11 => "Upsert, delete and re-embed safely. Use collection aliases to switch models with zero downtime.",
      12 => "See why exact search gets slow with a lot of data, and what approximate nearest neighbour search gives up to be fast.",
      13 => "Step through an HNSW search. Tune m, ef_construct and hnsw_ef for speed and recall.",
      14 => "Group vectors into clusters with k-means, search only the nearest clusters, and tune nlist and nprobe.",
      15 => "Make vectors smaller with scalar, binary and product quantisation. Use rescoring to get accuracy back.",
      16 => "Measure recall@k against exact search, time your queries, and tune an index based on real numbers.",
      17 => "Plan a semantic search feature: chunking, metadata, multi-tenancy and checking that results are relevant.",
      18 => "See where vector search fits in retrieval-augmented generation (RAG), and what makes retrieval good enough.",
      19 => "Combine dense vectors with sparse keyword vectors, and merge the results with reciprocal rank fusion.",
      20 => "Build and test a semantic FAQ search in your Vector Lab, and compare metrics on real queries.",

    }

    exercises = {
      1 => { type: "multiple_choice", q: "A user searches the help centre for \"cancel my plan\", but the article is called \"How to end your subscription\". Which search finds it?", opts: ["A) Keyword search, because it matches exact words", "B) Neither, because the words are different", "C) Semantic (vector) search, because it compares meaning"], ans: "C" },
      2 => { type: "true_false", q: "An embedding model turns text of any length into a vector with the same number of dimensions.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "You embedded your documents with model A. You embed queries with model B, which has the same number of dimensions. What happens?", opts: ["A) Search results become bad, because the two models' vector spaces do not match", "B) It works, because the dimensions are the same", "C) Qdrant converts the vectors for you"], ans: "A" },
      4 => { type: "multiple_choice", q: "Vector B points the same way as vector A but is twice as long. Which metric says they are the same?", opts: ["A) Euclidean distance", "B) Cosine similarity", "C) Dot product"], ans: "B" },
      5 => { type: "true_false", q: "When all vectors are normalised to length 1, cosine similarity, dot product and Euclidean distance put search results in the same order.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "In Qdrant, where do you store a document's title, language and URL?", opts: ["A) In the vector itself", "B) In the collection name", "C) In the point's payload"], ans: "C" },
      7 => { type: "multiple_choice", q: "You create a Qdrant collection with size 384. Then you try to upsert a vector with 1536 numbers. What happens?", opts: ["A) Qdrant cuts it down to 384 numbers", "B) Qdrant rejects it because the size does not match", "C) Qdrant changes the collection size to 1536"], ans: "B" },
      8 => { type: "true_false", q: "A nearest-neighbour search with top-k = 5 always returns only relevant results.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "You only want results where lang is \"en\" and the document is not archived. Which filter is right?", opts: ["A) must: [lang = en], must_not: [archived = true]", "B) should: [lang = en, archived = true]", "C) must_not: [lang = en]"], ans: "A" },
      10 => { type: "multiple_choice", q: "In the Vector Lab, you look at the same text stored in a Cosine collection and a Dot collection. Why do the stored vectors have different lengths?", opts: ["A) The Dot collection stores the text twice", "B) Qdrant normalises vectors to length 1 when it stores them in a Cosine collection", "C) The browser used a different model for each one"], ans: "B" },
      11 => { type: "multiple_choice", q: "You switch to a new embedding model. What is the safe way to move production search to it?", opts: ["A) Re-embed everything into a new collection, then point an alias to it", "B) Upsert new vectors into the old collection one by one", "C) Keep the old document vectors and embed only new queries with the new model"], ans: "A" },
      12 => { type: "true_false", q: "Approximate nearest neighbour (ANN) search can miss some of the true nearest neighbours, but in return it is faster.", opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "In HNSW, what usually happens when you increase the search-time ef (hnsw_ef)?", opts: ["A) Faster search and lower recall", "B) Slower search and higher recall", "C) The index is rebuilt"], ans: "B" },
      14 => { type: "multiple_choice", q: "An IVF index has 1,000 clusters and searches with nprobe = 1. What is the main risk?", opts: ["A) It misses a true neighbour that is in a nearby cluster", "B) Every query checks all vectors", "C) The index uses too little memory"], ans: "A" },
      15 => { type: "multiple_choice", q: "Scalar (int8) quantisation stores each number in 1 byte instead of 4. About how much memory do the vectors use after that?", opts: ["A) Half", "B) The same", "C) A quarter"], ans: "C" },
      16 => { type: "multiple_choice", q: "Exact search returns IDs {1, 2, 3, 4, 5}. Your ANN index returns {1, 2, 3, 7, 9}. What is recall@5?", opts: ["A) 0.6", "B) 0.4", "C) 1.0"], ans: "A" },
      17 => { type: "multiple_choice", q: "Many customers share one collection. How do you stop one customer's search from seeing another customer's documents?", opts: ["A) Ask users not to search for other companies", "B) Trust the embeddings to keep them separate", "C) Store a tenant ID in the payload and always filter on it"], ans: "C" },
      18 => { type: "true_false", q: "In RAG, if the right chunk is never retrieved, a better prompt to the language model usually fixes the answer.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "A user searches for the exact error code \"E-4021\". Why does hybrid search help?", opts: ["A) Sparse keyword vectors match rare exact terms that dense embeddings may not match exactly", "B) Dense vectors cannot store numbers", "C) Hybrid search does not use the embedding model"], ans: "A" },
      20 => { type: "multiple_choice", q: "Your FAQ search returns the right answer in the top 3 for 8 of 10 test questions. What is its hit rate@3?", opts: ["A) 0.3", "B) 0.8", "C) 8"], ans: "B" },

    }

    VectorDatabasesContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
