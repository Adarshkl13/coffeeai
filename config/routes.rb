Rails.application.routes.draw do
  devise_for :users

  # ── Public ───────────────────────────────────────────────────────
  root "home#index"
  get  "/editor",         to: "editor#show",   as: :editor
  post "/editor/pages",   to: "editor#publish", as: :editor_pages
  patch "/editor/pages/:id", to: "editor#update_page", as: :editor_page
  post "/editor/uploads", to: "editor#upload", as: :editor_uploads
  delete "/editor/uploads/:id", to: "editor#destroy_upload", as: :editor_upload
  get "/p/pages/:slug", to: "published_pages#show", as: :published_page

  # ── Authenticated ────────────────────────────────────────────────
  get "/dashboard", to: "dashboard#index", as: :dashboard

  # Existing AI Academy static course (unchanged)
  get  "/lessons/:id",          to: "lessons#show",     as: :lesson
  post "/lessons/:id/complete", to: "lessons#complete", as: :complete_lesson
  post "/lessons/:id/skip",     to: "lessons#skip",     as: :skip_lesson

  # DB-backed courses
  resources :courses, only: %i[index show], param: :slug
  get  "/courses/:course_slug/lessons/:id",          to: "course_lessons#show",     as: :course_lesson
  post "/courses/:course_slug/lessons/:id/complete", to: "course_lessons#complete", as: :complete_course_lesson
  post "/courses/:course_slug/lessons/:id/skip",     to: "course_lessons#skip",     as: :skip_course_lesson

  # Exercise attempts (JSON endpoint)
  resources :exercise_attempts, only: [:create]

  # ── Admin ────────────────────────────────────────────────────────
  namespace :admin do
    root "dashboard#index"
    resources :users, only: %i[index show]
    resources :courses, only: %i[index show]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
