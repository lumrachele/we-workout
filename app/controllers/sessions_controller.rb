class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
      elsif !@user
        flash[:notice]=
        "You do not have an account. Please click 'sign up' to create a new account."
        redirect_to login_path
      else
        flash[:notice]=
        "Invalid email or password. Please try again."
        redirect_to login_path
      end

    # user = User.find_by(email: params[:user][:email])
    # if !user
    #   flash[:notice] = "You do not have an account. Please click 'sign up' to create a new account."
    #   redirect_to login_path
    # elsif user
    #   user = user.try(:authenticate, params[:user][:password])
    #   session[:user_id] = user.id
    #   @user = user
    #   redirect_to @user
    # end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
    flash[:notice] = "You have been logged out."
  end

end
