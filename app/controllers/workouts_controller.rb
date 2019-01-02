class WorkoutsController < ApplicationController
  #before_action :find_workout, only: [:show, :edit, :update]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @user = User.find_by(id: current_user.id)
    @workout = @user.workouts.create(workout_params)
    #byebug
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
    @user = User.find_by(id: current_user.id)
    @workout = Workout.find_by(id: params[:id])
  end

  def edit
    @workout = Workout.find_by(id: params[:id])
  end


  def add_exercise
    @categories = Category.all
    @workout = Workout.find_by(id: params[:id])

    #all for the search function
    if params[:category_id] && params[:search]
      category = Category.find(params[:category_id])
      @exercises = category.exercises.where('name LIKE ?', "%#{params[:search]}%")
    elsif params[:category_id] && !params[:search]
      category = Category.find(params[:category_id])
      @exercises = category.exercises
    elsif params[:search] && !params[:category_id]
      @exercises = Exercise.where('name LIKE ?', "%#{params[:search]}%")
    else
      @exercises = Exercise.all
    end
    #end of search function logic

    #@workout.exercises << exercise_id
  end


  def add_the_exercises
    @workout = Workout.find_by(id: params[:id])
    @exercise = Exercise.find_by(id: params[:workout][:exercise][:exercise_id])
    @workout.exercises << @exercise
    redirect_to add_exercise_path
  end

  def update
    #byebug
    @workout = Workout.find_by(id: params[:id])
    @workout.update(workout_params)
    #@exercise = Exercise.find_by(id: params[:exercise_id])
    #if @exercise
    #  @workout.exercises << @exercise
    #end
    redirect_to @workout
  end

private

  def workout_params
    params.require(:workout).permit(:id, :title, :sets, :notes, :user_id, exercises_attributes:[:id, :name])
  end

  # def find_workout
  #   @workout = Workout.find_by(id: params[:workout_id])
  # end

end
