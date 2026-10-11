class CreateCertificates < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string   # full name, shown on certificates

    create_table :certificates do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, foreign_key: true          # nil for the original course (LessonsController)
      t.string :course_key, null: false                # course slug, or Certificate::ORIGINAL_KEY
      t.string :course_title, null: false
      t.integer :lesson_count, null: false
      t.string :code, null: false                      # public ID, e.g. CB-7K3P-9QXW
      t.datetime :issued_at, null: false
      t.timestamps
    end
    add_index :certificates, :code, unique: true
    add_index :certificates, [:user_id, :course_key], unique: true
  end
end
