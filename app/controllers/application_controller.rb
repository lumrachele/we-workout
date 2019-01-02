class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end



private
  def required_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
