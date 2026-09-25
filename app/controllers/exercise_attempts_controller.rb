class ExerciseAttemptsController < ApplicationController
  before_action :authenticate_user!

  def create
    exercise = Exercise.find(params[:exercise_id])
    answer   = params[:answer].to_s.strip
    correct  = answer == exercise.correct_answer.strip

    attempt_num = current_user.exercise_attempts.where(exercise: exercise).count + 1
    ExerciseAttempt.create!(
      user:           current_user,
      exercise:       exercise,
      answer:         answer,
      correct:        correct,
      attempt_number: attempt_num
    )

    render json: { correct: correct, correct_answer: exercise.correct_answer }
  end
end
