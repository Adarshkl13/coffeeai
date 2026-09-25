class CreateCourseProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :course_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course_lesson, null: false, foreign_key: true
      t.integer :status
      t.datetime :completed_at
      t.datetime :skipped_at

      t.timestamps
    end
  end
end
