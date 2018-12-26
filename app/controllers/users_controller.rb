class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def show
    render :show
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :birthday)
  end

  def find_user
    @user = User.find(params[:id])
  end


end
