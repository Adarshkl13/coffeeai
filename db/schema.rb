# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_10_13_120001) do
  create_table "app_settings", force: :cascade do |t|
    t.string "key", null: false
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_app_settings_on_key", unique: true
  end

  create_table "certificates", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id"
    t.string "course_key", null: false
    t.string "course_title", null: false
    t.integer "lesson_count", null: false
    t.string "code", null: false
    t.datetime "issued_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_certificates_on_code", unique: true
    t.index ["course_id"], name: "index_certificates_on_course_id"
    t.index ["user_id", "course_key"], name: "index_certificates_on_user_id_and_course_key", unique: true
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "course_lessons", force: :cascade do |t|
    t.integer "course_id", null: false
    t.string "title"
    t.integer "position"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.text "starter_code"
    t.index ["course_id"], name: "index_course_lessons_on_course_id"
  end

  create_table "course_progresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_lesson_id", null: false
    t.integer "status"
    t.datetime "completed_at"
    t.datetime "skipped_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_lesson_id"], name: "index_course_progresses_on_course_lesson_id"
    t.index ["user_id"], name: "index_course_progresses_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "slug", null: false
    t.text "description"
    t.string "color", default: "#7c3aed"
    t.string "icon", default: "📚"
    t.integer "position", default: 0
    t.boolean "published", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editor_images", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "original_filename", null: false
    t.string "stored_filename", null: false
    t.string "content_type", null: false
    t.integer "byte_size", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stored_filename"], name: "index_editor_images_on_stored_filename", unique: true
    t.index ["url"], name: "index_editor_images_on_url", unique: true
    t.index ["user_id"], name: "index_editor_images_on_user_id"
  end

  create_table "exercise_attempts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "exercise_id", null: false
    t.string "answer"
    t.boolean "correct"
    t.integer "attempt_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_attempts_on_exercise_id"
    t.index ["user_id"], name: "index_exercise_attempts_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "course_lesson_id", null: false
    t.string "exercise_type"
    t.text "question"
    t.text "options"
    t.string "correct_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_lesson_id"], name: "index_exercises_on_course_lesson_id"
  end

  create_table "lab_usages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "kind", null: false
    t.date "day", null: false
    t.integer "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "kind", "day"], name: "index_lab_usages_on_user_id_and_kind_and_day", unique: true
    t.index ["user_id"], name: "index_lab_usages_on_user_id"
  end

  create_table "lesson_progresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "lesson_id"
    t.integer "status"
    t.datetime "completed_at"
    t.datetime "skipped_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lesson_progresses_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "order_id", null: false
    t.string "plan", null: false
    t.integer "amount", null: false
    t.string "currency", default: "INR", null: false
    t.string "status", default: "PENDING", null: false
    t.string "phone"
    t.string "cf_order_id"
    t.datetime "paid_at"
    t.datetime "access_from"
    t.datetime "access_until"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id", unique: true
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "published_pages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.string "slug", null: false
    t.text "html_content", null: false
    t.text "css_content", null: false
    t.text "js_content", null: false
    t.text "image_references"
    t.boolean "is_public", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_published_pages_on_slug", unique: true
    t.index ["user_id"], name: "index_published_pages_on_user_id"
  end

  create_table "rag_lab_collections", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.datetime "last_used_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_used_at"], name: "index_rag_lab_collections_on_last_used_at"
    t.index ["name"], name: "index_rag_lab_collections_on_name", unique: true
    t.index ["user_id"], name: "index_rag_lab_collections_on_user_id", unique: true
  end

  create_table "rag_lab_documents", force: :cascade do |t|
    t.integer "rag_lab_collection_id", null: false
    t.string "name", null: false
    t.integer "chars", default: 0, null: false
    t.integer "chunks_count", default: 0, null: false
    t.integer "chunk_size", null: false
    t.integer "chunk_overlap", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rag_lab_collection_id"], name: "index_rag_lab_documents_on_rag_lab_collection_id"
  end

  create_table "study_chats", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", default: "New chat", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "updated_at"], name: "index_study_chats_on_user_id_and_updated_at"
    t.index ["user_id"], name: "index_study_chats_on_user_id"
  end

  create_table "study_messages", force: :cascade do |t|
    t.integer "study_chat_id", null: false
    t.string "role", null: false
    t.text "content", default: "", null: false
    t.string "attachment_name"
    t.boolean "web", default: false, null: false
    t.json "sources"
    t.text "search_suggestions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["study_chat_id"], name: "index_study_messages_on_study_chat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.datetime "access_until"
    t.string "name"
    t.datetime "blocked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vector_lab_collections", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.string "metric", null: false
    t.datetime "last_used_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_used_at"], name: "index_vector_lab_collections_on_last_used_at"
    t.index ["name"], name: "index_vector_lab_collections_on_name", unique: true
    t.index ["user_id", "metric"], name: "index_vector_lab_collections_on_user_id_and_metric", unique: true
    t.index ["user_id"], name: "index_vector_lab_collections_on_user_id"
  end

  add_foreign_key "certificates", "courses"
  add_foreign_key "certificates", "users"
  add_foreign_key "course_lessons", "courses"
  add_foreign_key "course_progresses", "course_lessons"
  add_foreign_key "course_progresses", "users"
  add_foreign_key "editor_images", "users"
  add_foreign_key "exercise_attempts", "exercises"
  add_foreign_key "exercise_attempts", "users"
  add_foreign_key "exercises", "course_lessons"
  add_foreign_key "lab_usages", "users"
  add_foreign_key "lesson_progresses", "users"
  add_foreign_key "payments", "users"
  add_foreign_key "published_pages", "users"
  add_foreign_key "rag_lab_collections", "users"
  add_foreign_key "rag_lab_documents", "rag_lab_collections"
  add_foreign_key "study_chats", "users"
  add_foreign_key "study_messages", "study_chats"
  add_foreign_key "vector_lab_collections", "users"
end
