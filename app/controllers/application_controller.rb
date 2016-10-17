class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :current_user
  before_filter :logged_in?

  private
  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    @logged_in = !!current_user
  end

end
