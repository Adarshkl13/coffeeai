# Loads before devise.rb (file name starts with 00) because Devise reads the keys through SocialLogin.key.
# "Continue with Google" settings. A provider is on only when both of its keys are set.
module SocialLogin
  # keys: ENV name => path in Rails credentials (ENV wins; credentials are the encrypted fallback).
  PROVIDERS = {
    google_oauth2: { label: "Google",   keys: { "GOOGLE_CLIENT_ID" => %i[google client_id], "GOOGLE_CLIENT_SECRET" => %i[google client_secret] } }
  }.freeze

  def self.key(env_name)
    path = PROVIDERS.values.map { |p| p[:keys] }.reduce(:merge).fetch(env_name)
    ENV[env_name].presence || Rails.application.credentials.dig(*path).presence
  end

  def self.enabled?(provider) = PROVIDERS.fetch(provider)[:keys].keys.all? { |k| key(k).present? }
  def self.enabled = PROVIDERS.keys.select { |p| enabled?(p) }
end

# Cancel or error at Google: Devise's default handler looks the user scope up from the path, which does not
# work with our "/auth" prefix, so send failures straight to our controller with the user mapping set.
Rails.application.config.after_initialize do
  # OmniAuth must know the "/auth" prefix from the very first request. Devise only sets it while drawing routes
  # (lazily in development and tests), so without this the first click after a restart would 404.
  OmniAuth.config.path_prefix = "/auth"

  OmniAuth.config.on_failure = lambda do |env|
    env["devise.mapping"] = Devise.mappings[:user]
    Users::OmniauthCallbacksController.action(:failure).call(env)
  end
end
