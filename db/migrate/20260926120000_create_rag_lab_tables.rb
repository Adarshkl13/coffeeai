class CreateRagLabTables < ActiveRecord::Migration[8.0]
  def change
    create_table :rag_lab_collections do |t|
      t.references :user, null: false, foreign_key: true, index: { unique: true }
      t.string :name, null: false
      t.datetime :last_used_at, null: false
      t.timestamps
    end
    add_index :rag_lab_collections, :name, unique: true
    add_index :rag_lab_collections, :last_used_at

    create_table :rag_lab_documents do |t|
      t.references :rag_lab_collection, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :chars, null: false, default: 0
      t.integer :chunks_count, null: false, default: 0
      t.integer :chunk_size, null: false
      t.integer :chunk_overlap, null: false
      t.timestamps
    end
  end
end
