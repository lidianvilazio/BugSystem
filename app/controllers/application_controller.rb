class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_user
    if params[:controller] == 'customers'
      current_customer
    elsif params[:controller] == "employees"
      current_employee
    end
  end

  def current_customer
    @customer = Customer.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_employee
    @employee = Employee.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    if current_user
      current_user
    elsif current_employee
      current_employee
    elsif current_customer
      current_customer
    end
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
