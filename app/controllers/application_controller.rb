class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized #locks down the app
  helper_method :current_user #You can call current user from a view

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    flash[:notice] = "Please log in or make a new account."
    redirect_to login_path unless logged_in?
  end


# private
#   def required_logged_in
#     redirect_to login_path unless logged_in?
#   end

end
