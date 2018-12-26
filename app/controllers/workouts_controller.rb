class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
  end

  def show
    @workout = Workout.find(params[:id])
  end

private

  def workout_params
    params.require(:workout).permit(:title, :sets, :notes)
  end

end
