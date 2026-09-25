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

ActiveRecord::Schema[8.0].define(version: 2026_05_31_193000) do
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "course_lessons", "courses"
  add_foreign_key "course_progresses", "course_lessons"
  add_foreign_key "course_progresses", "users"
  add_foreign_key "editor_images", "users"
  add_foreign_key "exercise_attempts", "exercises"
  add_foreign_key "exercise_attempts", "users"
  add_foreign_key "exercises", "course_lessons"
  add_foreign_key "lesson_progresses", "users"
  add_foreign_key "published_pages", "users"
end
