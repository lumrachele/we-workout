class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:show]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    if !@user
      redirect_to new_user_path
    else
      session[:user_id] = @user.id
    redirect_to @user
    end
  end

  def show
    # @user = User.find_by(id: session[:user_id])
    @workouts = @user.workouts
    render :show
    # redirect_to @user
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find_by(id: session[:user_id])
    # @user = User.find(params[:id])
  end


end
