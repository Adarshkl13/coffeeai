class CreateEditorImages < ActiveRecord::Migration[8.0]
  def change
    create_table :editor_images do |t|
      t.references :user, null: false, foreign_key: true
      t.string :original_filename, null: false
      t.string :stored_filename, null: false
      t.string :content_type, null: false
      t.integer :byte_size, null: false
      t.string :url, null: false

      t.timestamps
    end

    add_index :editor_images, :stored_filename, unique: true
    add_index :editor_images, :url, unique: true
  end
end
