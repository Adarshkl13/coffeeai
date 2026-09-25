class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :slug, null: false
      t.text :description
      t.string :color, default: "#7c3aed"
      t.string :icon, default: "📚"
      t.integer :position, default: 0
      t.boolean :published, default: false, null: false

      t.timestamps
    end
  end
end
