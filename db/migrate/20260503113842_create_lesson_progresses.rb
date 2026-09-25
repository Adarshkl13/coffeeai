class CreateLessonProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :lesson_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :lesson_id
      t.integer :status
      t.datetime :completed_at
      t.datetime :skipped_at

      t.timestamps
    end
  end
end
