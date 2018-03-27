class SessionsController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by(name: params[:name])
    if @customer && @customer.authenticate(params[:password])
      session[:customer_id] = @customer.id
      redirect_to customer_path(@customer)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to login_path
  end
end
