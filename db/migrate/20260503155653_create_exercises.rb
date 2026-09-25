class CreateExercises < ActiveRecord::Migration[8.0]
  def change
    create_table :exercises do |t|
      t.references :course_lesson, null: false, foreign_key: true
      t.string :exercise_type
      t.text :question
      t.text :options
      t.string :correct_answer

      t.timestamps
    end
  end
end
