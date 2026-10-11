class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :access_until, :datetime   # paid plan end; nil or past = free user

    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :order_id, null: false               # our order id, also used as Cashfree's order_id
      t.string :plan, null: false
      t.integer :amount, null: false                # whole rupees
      t.string :currency, null: false, default: "INR"
      t.string :status, null: false, default: "PENDING"   # PENDING, PAID, FAILED
      t.string :phone
      t.string :cf_order_id
      t.datetime :paid_at
      t.datetime :access_from
      t.datetime :access_until
      t.timestamps
    end
    add_index :payments, :order_id, unique: true
  end
end
