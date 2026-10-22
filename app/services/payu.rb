require "net/http"
require "json"
require "openssl"

# PayU Hosted Checkout (PayU India), used by PaymentsController.
# The browser posts a signed form to PayU's payment page; PayU posts the result back to us; we check its
# hash and then ask PayU's verify_payment API for the real status before giving access.
#
# Settings come from ENV, or from Rails credentials under `payu:` (key, salt, mode):
#   PAYU_KEY, PAYU_SALT   merchant key and salt (PayU dashboard › Developer › API Keys)
#   PAYU_MODE             "test" (the default) or "live"
# Test mode never runs in production, so test cards can never unlock a real plan.
class Payu
  class Error < StandardError; end

  URLS = {
    "test" => { pay: "https://test.payu.in/_payment", verify: "https://test.payu.in/merchant/postservice.php?form=2" },
    "live" => { pay: "https://secure.payu.in/_payment", verify: "https://info.payu.in/merchant/postservice.php?form=2" }
  }.freeze

  def self.setting(env, key) = ENV[env].presence || Rails.application.credentials.dig(:payu, key).presence
  def self.key = setting("PAYU_KEY", :key)
  def self.salt = setting("PAYU_SALT", :salt)
  def self.mode = setting("PAYU_MODE", :mode).to_s == "live" ? "live" : "test"
  def self.enabled? = key.present? && salt.present? && (mode == "live" || !Rails.env.production?)
  def self.payment_url = URLS.fetch(mode)[:pay]

  def self.sha512(*parts) = OpenSSL::Digest::SHA512.hexdigest(parts.join("|"))

  # The form fields for PayU's payment page, signed with
  # sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||salt).
  def self.checkout_fields(txnid:, amount:, productinfo:, firstname:, email:, phone:, surl:, furl:, udf1: "")
    f = { key: key, txnid: txnid, amount: format_amount(amount), productinfo: clean(productinfo),
          firstname: clean(firstname), email: email.to_s, phone: phone.to_s, surl: surl, furl: furl, udf1: clean(udf1) }
    f[:hash] = sha512(f[:key], f[:txnid], f[:amount], f[:productinfo], f[:firstname], f[:email],
                      f[:udf1], "", "", "", "",   # udf1 to udf5
                      "", "", "", "", "",         # five empty reserved fields
                      salt)
    f
  end

  # Checks the hash PayU sends back (to the return page or the webhook):
  # sha512([additionalCharges|]salt|status||||||udf5|udf4|udf3|udf2|udf1|email|firstname|productinfo|amount|txnid|key)
  def self.valid_response?(params)
    p = params.to_h.transform_keys(&:to_s)
    return false if p["hash"].blank? || salt.blank? || p["key"].to_s != key.to_s
    parts = [salt, p["status"], "", "", "", "", "", p["udf5"], p["udf4"], p["udf3"], p["udf2"], p["udf1"],
             p["email"], p["firstname"], p["productinfo"], p["amount"], p["txnid"], p["key"]].map(&:to_s)
    parts.unshift(p["additionalCharges"].to_s) if p["additionalCharges"].present?
    ActiveSupport::SecurityUtils.secure_compare(sha512(*parts), p["hash"].to_s.downcase)
  end

  # PayU's own record of a transaction: { status: "success" | "failure" | "pending" | ..., amount: Float, mihpayid: String }.
  def verify(txnid)
    body = { key: self.class.key, command: "verify_payment", var1: txnid,
             hash: self.class.sha512(self.class.key, "verify_payment", txnid, self.class.salt) }
    uri = URI(URLS.fetch(self.class.mode)[:verify])
    req = Net::HTTP::Post.new(uri)
    req["Accept"] = "application/json"
    req.set_form_data(body)
    res = Net::HTTP.start(uri.host, uri.port, use_ssl: true, open_timeout: 10, read_timeout: 30) { |http| http.request(req) }
    raise Error, "PayU answered #{res.code}" unless res.is_a?(Net::HTTPSuccess)
    data = JSON.parse(res.body)
    row = data.dig("transaction_details", txnid) || {}
    { status: row["status"].to_s.downcase, amount: (row["amt"] || row["transaction_amount"]).to_f, mihpayid: row["mihpayid"].to_s.presence }
  rescue JSON::ParserError
    raise Error, "PayU sent an answer we couldn't read"
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError => e
    raise Error, "Couldn't reach PayU (#{e.class.name.demodulize})"
  end

  def self.format_amount(amount) = format("%.2f", amount.to_f)

  # PayU uses "|" in its hash strings, so it must never appear in a field.
  def self.clean(text) = text.to_s.delete("|").squish.truncate(100, omission: "")
end
