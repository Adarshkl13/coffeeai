require "net/http"
require "json"
require "openssl"
require "base64"

# Cashfree Payment Gateway (Orders API), used by PaymentsController.
# Settings come from ENV, or from Rails credentials under `cashfree:` (app_id, secret_key, base_url, api_version):
#   CASHFREE_APP_ID, CASHFREE_SECRET_KEY
#   CASHFREE_BASE_URL     https://sandbox.cashfree.com/pg (testing, the default) or https://api.cashfree.com/pg (live)
#   CASHFREE_API_VERSION  default 2025-01-01
class Cashfree
  class Error < StandardError; end

  SANDBOX = "https://sandbox.cashfree.com/pg".freeze

  def self.setting(env, key) = ENV[env].presence || Rails.application.credentials.dig(:cashfree, key).presence
  def self.app_id = setting("CASHFREE_APP_ID", :app_id)
  def self.secret_key = setting("CASHFREE_SECRET_KEY", :secret_key)
  def self.base_url = (setting("CASHFREE_BASE_URL", :base_url) || SANDBOX).chomp("/")
  def self.api_version = setting("CASHFREE_API_VERSION", :api_version) || "2025-01-01"
  def self.enabled? = app_id.present? && secret_key.present?
  def self.mode = base_url.include?("sandbox") ? "sandbox" : "production"

  # Creates an order and returns Cashfree's reply (it includes payment_session_id).
  def create_order(order_id:, amount:, customer_id:, email:, phone:, return_url:, notify_url:, note:)
    request(:post, "/orders", {
      order_id: order_id,
      order_amount: amount,
      order_currency: "INR",
      customer_details: { customer_id: customer_id, customer_email: email, customer_phone: phone },
      order_meta: { return_url: return_url, notify_url: notify_url },
      order_note: note
    })
  end

  # Cashfree's current view of an order: order_status is ACTIVE, PAID, EXPIRED or TERMINATED.
  def fetch_order(order_id)
    request(:get, "/orders/#{ERB::Util.url_encode(order_id)}")
  end

  # Checks a webhook: Base64(HMAC-SHA256(timestamp + raw body, secret key)) must equal the signature header.
  def self.valid_webhook?(raw_body, timestamp, signature)
    return false if [raw_body, timestamp, signature, secret_key].any?(&:blank?)
    expected = Base64.strict_encode64(OpenSSL::HMAC.digest("SHA256", secret_key, "#{timestamp}#{raw_body}"))
    ActiveSupport::SecurityUtils.secure_compare(expected, signature.to_s)
  end

  private

  def request(method, path, body = nil)
    uri = URI("#{self.class.base_url}#{path}")
    req = (method == :post ? Net::HTTP::Post : Net::HTTP::Get).new(uri)
    req["Content-Type"] = "application/json"
    req["Accept"] = "application/json"
    req["x-client-id"] = self.class.app_id
    req["x-client-secret"] = self.class.secret_key
    req["x-api-version"] = self.class.api_version
    req.body = JSON.generate(body) if body

    res = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 10, read_timeout: 30) { |http| http.request(req) }
    data = JSON.parse(res.body.to_s) rescue {}
    unless res.is_a?(Net::HTTPSuccess)
      Rails.logger.warn("[Cashfree] #{method.upcase} #{path} -> #{res.code}: #{data['message'] || res.body.to_s.truncate(200)}")
      raise Error, data["message"].presence || "Cashfree returned an error (#{res.code})."
    end
    data
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError
    raise Error, "Couldn't reach the payment service. Please try again."
  end
end
