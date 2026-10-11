class CreateLabUsages < ActiveRecord::Migration[8.0]
  def change
    create_table :lab_usages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :kind, null: false
      t.date :day, null: false
      t.integer :count, null: false, default: 0
      t.timestamps
    end
    add_index :lab_usages, [:user_id, :kind, :day], unique: true
  end
end
