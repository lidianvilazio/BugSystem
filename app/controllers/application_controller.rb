class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_user
    # byebug
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user
  end

  def authorized
    redirect_to login_path unless logged_in?

  end

end
