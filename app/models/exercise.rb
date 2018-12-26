class Exercise < ApplicationRecord
  has_many :workouts
  has_many :exercise_categories
end
