# Site-wide settings the admin can change without a deploy (Admin::AiProviderController), stored as key/value rows.
# Reads are cached (they happen on every AI request); saving clears the cache, so changes apply at once.
class AppSetting < ApplicationRecord
  validates :key, presence: true, uniqueness: true
  after_commit { Rails.cache.delete(self.class.cache_key_for(key)) }

  def self.cache_key_for(key) = "app_setting/v1/#{key}"

  def self.get(key, default = nil)
    value = Rails.cache.fetch(cache_key_for(key), expires_in: 10.minutes) { find_by(key: key.to_s)&.value.to_s }
    value.presence || default
  end

  def self.set(key, value)
    row = find_or_initialize_by(key: key.to_s)
    row.update!(value: value.to_s.strip)
  end
end
