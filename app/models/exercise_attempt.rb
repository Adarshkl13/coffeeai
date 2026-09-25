class ExerciseAttempt < ApplicationRecord
  belongs_to :user
  belongs_to :exercise

  validates :answer, presence: true
  validates :correct, inclusion: { in: [ true, false ] }

  scope :correct_ones, -> { where(correct: true) }
  scope :wrong_ones,   -> { where(correct: false) }
end
