class Exercise < ApplicationRecord
  has_and_belongs_to_many :workouts
  has_many :exercise_categories
  has_many :categories, through: :exercise_categories


end
