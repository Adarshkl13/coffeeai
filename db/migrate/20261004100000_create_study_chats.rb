class CreateStudyChats < ActiveRecord::Migration[8.0]
  def change
    create_table :study_chats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false, default: "New chat"
      t.timestamps
    end
    add_index :study_chats, [:user_id, :updated_at]

    create_table :study_messages do |t|
      t.references :study_chat, null: false, foreign_key: true
      t.string :role, null: false            # "user" or "model"
      t.text :content, null: false, default: ""
      t.string :attachment_name              # the file sent with this message, if any (the file itself is not kept)
      t.boolean :web, null: false, default: false
      t.json :sources                        # web sources from Google Search grounding: [{ "title", "uri" }]
      t.text :search_suggestions             # Google's search-suggestion HTML, shown as required by the API terms
      t.timestamps
    end
  end
end
