class CustomerServicesController < ApplicationController
  before_action :authorized


  def index
    @customer_services = current_user.customer_services
  end

  def new
    @customer_service = CustomerService.new
  end

  def create
    @customer_service = CustomerService.create(customer_service_params)
    redirect_to customer_services_path
  end

  private
  def customer_service_params
    params.require(:customer_service).permit(:name, :description, :customer_id)

  end
end
