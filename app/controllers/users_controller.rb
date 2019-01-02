class UsersController < ApplicationController
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
    render :show
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end


end
