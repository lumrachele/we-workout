class Exercise < ApplicationRecord
  has_many :workouts
  has_many :exercise_categories
  has_many :categories, through: :exercise_categories

  # def self.search(search)
  #   if search
  #     exercise = Exercise.find_by(name: search)
  #     if exercise
  #       self.where(name: exercise)
  #     else
  #       Exercise.all
  #     end
  #   else
  #     Exercise.all
  #   end
  # end

end
