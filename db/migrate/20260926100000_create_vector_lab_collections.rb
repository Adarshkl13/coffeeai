class CreateVectorLabCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :vector_lab_collections do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :metric, null: false
      t.datetime :last_used_at, null: false
      t.timestamps
    end
    add_index :vector_lab_collections, :name, unique: true
    add_index :vector_lab_collections, [:user_id, :metric], unique: true
    add_index :vector_lab_collections, :last_used_at
  end
end
