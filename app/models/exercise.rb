class Exercise < ApplicationRecord
  has_many :workouts
  has_many :exercise_categories
  has_many :categories, through: :exercise_categories


end
