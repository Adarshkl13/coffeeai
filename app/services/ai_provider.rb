# Which AI company the whole app uses (Ask AI and the RAG, Prompt and Agent labs).
# The admin picks it on Admin › AI provider (stored in AppSetting "ai_provider"), together with a model
# name for each company. Before anything is saved, LAB_AI_PROVIDER (env) or Google Gemini is used.
#
# API keys stay out of the database: GEMINI_API_KEY, ANTHROPIC_API_KEY and OPENAI_API_KEY
# (env vars), or gemini/anthropic/openai: { api_key: } in Rails credentials.
module AiProvider
  class Error < StandardError; end   # every provider's errors are raised as this (learner-friendly message)

  PROVIDERS = {
    gemini:    { label: "Google Gemini",    default_model: "gemini-3.5-flash", env: "GEMINI_API_KEY",    web: true },
    anthropic: { label: "Anthropic Claude", default_model: "claude-opus-5",    env: "ANTHROPIC_API_KEY", web: false },
    openai:    { label: "OpenAI",           default_model: "gpt-6-luna",       env: "OPENAI_API_KEY",    web: false }
  }.freeze

  def self.keys = PROVIDERS.keys

  def self.current
    saved = AppSetting.get("ai_provider").presence || ENV.fetch("LAB_AI_PROVIDER", "gemini")
    keys.find { |k| k.to_s == saved.to_s.downcase } || :gemini
  rescue ActiveRecord::ActiveRecordError   # e.g. before the settings table exists
    :gemini
  end

  def self.label(provider = current) = PROVIDERS.fetch(provider)[:label]

  # The model for a provider: admin setting, else the old env vars, else the default.
  def self.model(provider = current)
    saved = AppSetting.get("#{provider}_model") rescue nil
    saved.presence || legacy_env_model(provider) || PROVIDERS.fetch(provider)[:default_model]
  end

  def self.api_key(provider = current)
    ENV[PROVIDERS.fetch(provider)[:env]].presence || Rails.application.credentials.dig(provider, :api_key).presence
  end

  def self.configured?(provider = current) = api_key(provider).present?

  # Google Search grounding ("Web" in Ask AI) is only wired up for Gemini.
  def self.web_search?(provider = current) = PROVIDERS.fetch(provider)[:web]

  # Ask AI's streaming client for the current provider.
  def self.chat_class(provider = current)
    { gemini: GeminiChat, anthropic: AnthropicChat, openai: OpenaiChat }.fetch(provider)
  end

  def self.legacy_env_model(provider)
    case provider
    when :gemini then ENV["LAB_GEMINI_MODEL"].presence || ENV["GEMINI_MODEL"].presence
    when :openai then ENV["OPENAI_MODEL"].presence
    end
  end
end
