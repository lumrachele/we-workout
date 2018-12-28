class ExercisesController < ApplicationController

  def index
    if params[:search]
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
    params.require(:exercise).permit(:name, :search)
  end

end
