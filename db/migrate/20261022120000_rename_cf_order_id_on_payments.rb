# Payments moved from Cashfree to PayU: the gateway's own payment id is now PayU's mihpayid.
class RenameCfOrderIdOnPayments < ActiveRecord::Migration[8.0]
  def change
    rename_column :payments, :cf_order_id, :gateway_payment_id
  end
end
