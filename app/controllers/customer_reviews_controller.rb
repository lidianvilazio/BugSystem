class CustomerReviewsController < ApplicationController
  def index
    # byebug
    if current_user.account_type == 'customer'
      @customer_reviews = current_user.customer.customer_reviews
    elsif current_user.account_type == 'employee'
      @customer_reviews = current_user.employee.customer_services
    end
  end

  def new
    @customer_review = CustomerReview.new
  end

  def create
    @customer_review = CustomerReview.create(customer_review_params)
    @customer_review.task
    redirect_to customer_reviews_path
  end

  def show
    @customer_review = CustomerReview.find(params[:id])
  end

  def update
    @customer_review = CustomerReview.find(params[:id])
    @customer_review.update(customer_review_params)
    redirect_to @customer_review
  end

  private

  def customer_review_params
    byebug
    if params[:customer_solution]
      params.require(:customer_review).permit(:description, :rating, :customer_id, :employee_id, :customer_service_id, :task_id)
    elsif params[:bug]
      params.require(:customer_review).permit(:description, :rating, :customer_id, :employee_id, :bug_id, :task_id)
    end
  end
end
