class SessionsController < ApplicationController
  def new
  end

  def create
    byebug
    if Customer.find_by(email: params[:email]).authenticate(params[:password])
      @customer = Customer.find_by(email: params[:email])
      session[:user_id] = @customer.id
      redirect_to customer_path(@customer)
    elsif Employee.find_by(email: params[:email]).authenticate(params[:password])
      @employee = Employee.find_by(email: params[:email])
      session[:user_id] = @employee.id
      redirect_to employee_path(@employee)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
