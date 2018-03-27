class SessionsController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by(email: params[:email])
    @employee = Employee.find_by(email: params[:email])
    if @customer && @customer.authenticate(params[:password])
      session[:user_id] = @customer.id
      redirect_to customer_path(@customer)
    elsif @employee && @employee.authenticate(params[:password])
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
