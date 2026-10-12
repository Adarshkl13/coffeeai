Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords" }

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

  # Existing CoffeeBean AI static course (unchanged)
  get  "/lessons/:id",          to: "lessons#show",     as: :lesson
  post "/lessons/:id/complete", to: "lessons#complete", as: :complete_lesson
  post "/lessons/:id/skip",     to: "lessons#skip",     as: :skip_lesson

  # DB-backed courses
  resources :courses, only: %i[index show], param: :slug
  get  "/courses/:course_slug/lessons/:id",          to: "course_lessons#show",     as: :course_lesson
  post "/courses/:course_slug/lessons/:id/complete", to: "course_lessons#complete", as: :complete_course_lesson
  post "/courses/:course_slug/lessons/:id/skip",     to: "course_lessons#skip",     as: :skip_course_lesson

  # Hands-on labs (JSON endpoints used by lesson widgets)
  scope "/labs/vector", controller: :vector_lab, as: :vector_lab do
    get    "",                    action: :show
    post   "collections",         action: :create_collection, as: :collections
    delete "collections/:metric", action: :destroy_collection, as: :collection
    post   "points",              action: :add_point, as: :points
    get    "points/:id",          action: :inspect_point, as: :point
    delete "points/:id",          action: :delete_point
    post   "search",              action: :search, as: :search
    post   "reset",               action: :reset, as: :reset
  end

  scope "/labs/rag", controller: :rag_lab, as: :rag_lab do
    get    "",              action: :show
    post   "documents",     action: :add_document, as: :documents
    delete "documents/:id", action: :delete_document, as: :document
    post   "ask",           action: :ask, as: :ask
    post   "reset",         action: :reset, as: :reset
  end

  scope "/labs/agent", controller: :agent_lab, as: :agent_lab do
    get  "",     action: :show
    post "run",  action: :run, as: :run
    post "tool", action: :tool, as: :tool
  end

  # Ask CoffeeBean AI: study assistant chat (Gemini)
  get    "ask",          to: "ask#index",            as: :ask
  get    "ask/:id",      to: "ask#index",            as: :ask_chat, constraints: { id: /\d+/ }
  patch  "ask/:id",      to: "ask#update",           constraints: { id: /\d+/ }
  delete "ask/:id",      to: "ask#destroy",          constraints: { id: /\d+/ }
  post   "ask/messages", to: "ask_messages#create",  as: :ask_messages

  scope "/labs/prompt", controller: :prompt_lab, as: :prompt_lab do
    get  "",    action: :show
    post "run", action: :run, as: :run
    post "try", action: :try, as: :try
  end

  # Footer information pages
  get "/about",   to: "pages#about",   as: :about
  get "/refund-policy",   to: "pages#refund",   as: :refund_policy
  get "/delivery-policy", to: "pages#delivery", as: :delivery_policy

  # Paid plan (Cashfree)
  get  "/pricing",          to: "payments#pricing", as: :pricing
  get  "/certificates/:code", to: "certificates#show", as: :certificate
  post "/payments",         to: "payments#create",  as: :payments
  get  "/payments/return",  to: "payments#finish",  as: :payments_return
  post "/payments/webhook", to: "payments#webhook", as: :payments_webhook
  get "/contact", to: "pages#contact", as: :contact
  get "/privacy", to: "pages#privacy", as: :privacy
  get "/terms",   to: "pages#terms",   as: :terms

  # Blog: Markdown articles from blog-posts/
  get "/blog",                     to: "blogs#index", as: :blogs
  get "/blog/:slug",               to: "blogs#show",  as: :blog
  get "/blog/:slug/images/:name",  to: "blogs#image", as: :blog_image,
      constraints: { name: /[\w.-]+/ }, format: false

  # Exercise attempts (JSON endpoint)
  resources :exercise_attempts, only: [:create]

  # ── Admin ────────────────────────────────────────────────────────
  namespace :admin do
    root "dashboard#index"
    resources :users, only: %i[index show] do
      member do
        patch :block
        patch :unblock
      end
    end
    resource :ai_provider, only: %i[show update], controller: "ai_provider"
    resources :courses, only: %i[index show]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
