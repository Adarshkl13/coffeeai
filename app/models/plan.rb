# The paid plans. Everything on CoffeeBean AI needs one; there is no free plan.
# Each plan is paid once (it does not renew by itself). Paying again adds its months to the end of the current plan.
class Plan
  Info = Struct.new(:key, :name, :price, :months, :badge, keyword_init: true)

  PLANS = [
    Info.new(key: "3m",  name: "3 Months", price: 1999, months: 3),
    Info.new(key: "6m",  name: "6 Months", price: 3499, months: 6, badge: "Popular"),
    Info.new(key: "12m", name: "1 Year",   price: 5000, months: 12, badge: "Best value")
  ].freeze
  ALL = PLANS.index_by(&:key).freeze
  # Plans that are no longer sold, kept so older payments still read correctly.
  RETIRED = { "full_4m" => Info.new(key: "full_4m", name: "4 Months", price: 1199, months: 4) }.freeze

  def self.find(key) = ALL[key.to_s]
  def self.lookup(key) = ALL[key.to_s] || RETIRED[key.to_s]
end
