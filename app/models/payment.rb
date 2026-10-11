# One Cashfree order for a plan (Plan). It becomes PAID only after Cashfree confirms it (PaymentsController).
class Payment < ApplicationRecord
  STATUSES = %w[PENDING PAID FAILED].freeze

  belongs_to :user
  validates :order_id, presence: true, uniqueness: true
  validates :status, inclusion: { in: STATUSES }
  validates :amount, numericality: { greater_than: 0 }

  scope :paid, -> { where(status: "PAID") }

  def plan_info = Plan.lookup(plan)
  def paid? = status == "PAID"

  def self.new_order_id = "CB#{Time.current.strftime('%y%m%d')}#{SecureRandom.hex(6).upcase}"

  # Marks the payment as paid and gives (or extends) access. Safe to call more than once,
  # because the return page and the webhook can both arrive.
  def fulfil!(cf_order_id: nil)
    with_lock do
      return false if paid?
      user.lock!
      start = [user.access_until, Time.current].compact.max
      finish = start + plan_info.months.months
      update!(status: "PAID", paid_at: Time.current, cf_order_id: cf_order_id || self.cf_order_id,
              access_from: start, access_until: finish)
      user.update!(access_until: finish)
      true
    end
  end
end
