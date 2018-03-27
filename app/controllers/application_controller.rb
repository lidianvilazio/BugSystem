class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_custormer
    @customer = Customer.find_by(id: session[:customer_id]) if session[:customer_id]
  end

  def logged_in?
    current_custormer
  end

  def authorized
    redirect_to login_path unless logged_in?

  end

end
