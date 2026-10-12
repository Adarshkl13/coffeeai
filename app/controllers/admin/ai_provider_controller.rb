module Admin
  # Admin › AI provider: choose which AI company the whole app uses (Ask AI and the labs), and each model name.
  # API keys are not stored here; they come from env vars or credentials (see AiProvider).
  class AiProviderController < BaseController
    def show
      @current = AiProvider.current
    end

    def update
      provider = params[:provider].to_s
      unless AiProvider.keys.map(&:to_s).include?(provider)
        return redirect_to admin_ai_provider_path, alert: "Choose Google Gemini, Anthropic Claude or OpenAI."
      end

      AiProvider.keys.each do |key|
        name = params.dig(:models, key).to_s.strip
        next if name.blank?
        unless name.match?(/\A[a-zA-Z0-9._:\-\/]{2,80}\z/)
          return redirect_to admin_ai_provider_path, alert: "The model name for #{AiProvider.label(key)} has characters that are not allowed."
        end
        AppSetting.set("#{key}_model", name)
      end
      AppSetting.set("ai_provider", provider)

      notice = "The app now uses #{AiProvider.label(provider.to_sym)} (#{AiProvider.model(provider.to_sym)})."
      notice += " Its API key is not set yet, so AI features will show a 'not switched on' message." unless AiProvider.configured?(provider.to_sym)
      redirect_to admin_ai_provider_path, notice: notice
    end
  end
end
