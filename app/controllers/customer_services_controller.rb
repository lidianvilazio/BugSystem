class CustomerServicesController < ApplicationController
  before_action :authorized

  def index
    # byebug
    if current_user.account_type == 'customer'
      @customer_services = current_user.customer.customer_services
    elsif current_user.account_type == 'employee'
      @customer_services == current_user.employee.customer_services
    end
  end

  def new
    @customer_service = CustomerService.new
  end

  def create
    @customer_service = CustomerService.create(customer_service_params)
    @customer_service.task
    redirect_to customer_services_path
  end

  def show
    byebug
    @customer_service = CustomerService.find(params[:id])
    @user = logged_in?.class
  end

  def update
    @customer_service = CustomerService.find(params[:id])
    @customer_service.update(customer_service_params)
    redirect_to @customer_service
  end

  private
  def customer_service_params
    params.require(:customer_service).permit(:name, :description, :customer_id,:solution_description, :completed, :type)

  end
end
