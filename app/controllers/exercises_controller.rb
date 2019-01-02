class ExercisesController < ApplicationController
  #before_action: :current_workout, only: [:index, :show]

  def index
    @categories = Category.all
    @workout = Workout.find_by(id: params[:workout_id])

    if params[:category_id] && params[:search]
      category = Category.find(params[:category_id])
      @exercises = category.exercises.where('name LIKE ?', "%#{params[:search]}%")

    elsif params[:category_id] && !params[:search]
      #byebug
      category = Category.find(params[:category_id])
      @exercises = category.exercises

    elsif params[:search] && !params[:category_id]
      #byebug
      @exercises = Exercise.where('name LIKE ?', "%#{params[:search]}%")
    else
      @exercises = Exercise.all
    end

  end

  def show
    @exercise = Exercise.find(params[:id])
  end

private

  def exercise_params
    params.require(:exercise).permit(:name, :search, :category)
  end

end
