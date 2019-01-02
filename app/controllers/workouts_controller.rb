class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @user = User.find_by(id: current_user.id)
    @workout = @user.workouts.create(workout_params)
    byebug
    if !@workout
      flash[:notice] = "Workout could not be created."
      return redirect_to new_workout_path
    else
      flash[:success] = "New workout created!"
    end
    #byebug
    redirect_to @workout

  end

  def show
    @user = User.find(params[:user_id])
    #@workout = @user.workouts.build
  end

private

  def workout_params
    params.require(:workout).permit(:id, :title, :sets, :notes, :exercises, :user_id, :exercise_id)
  end

end
