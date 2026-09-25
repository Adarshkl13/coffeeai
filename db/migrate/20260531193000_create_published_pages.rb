class CreatePublishedPages < ActiveRecord::Migration[8.0]
  def change
    create_table :published_pages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :slug, null: false
      t.text :html_content, null: false
      t.text :css_content, null: false
      t.text :js_content, null: false
      t.text :image_references
      t.boolean :is_public, null: false, default: true

      t.timestamps
    end

    add_index :published_pages, :slug, unique: true
  end
end
