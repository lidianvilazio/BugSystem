class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      if @user.account_type == 'customer'
        redirect_to customer_path(@user.customer)
      elsif @user.account_type == 'employee'
        redirect_to employee_path(@user.employee)
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
