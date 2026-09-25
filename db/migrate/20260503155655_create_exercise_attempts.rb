class CreateExerciseAttempts < ActiveRecord::Migration[8.0]
  def change
    create_table :exercise_attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.string :answer
      t.boolean :correct
      t.integer :attempt_number

      t.timestamps
    end
  end
end
