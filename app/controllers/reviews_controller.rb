class ReviewsController < ApplicationController
  before_action :authorized


  def index
    # byebug
    if current_user.account_type == 'customer'
      @reviews = current_user.customer.reviews
    elsif current_user.account_type == 'employee'
      @reviews = current_user.employee.customer_services
    end
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.task
    redirect_to reviews_path
  end

  def show
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to @review
  end

  private

  def review_params
    byebug
    if params[:customer_solution]
      params.require(:review).permit(:description, :rating, :customer_id, :employee_id, :customer_service_id, :task_id)
    elsif params[:bug]
      params.require(:review).permit(:description, :rating, :customer_id, :employee_id, :bug_id, :task_id)
    end
  end
end
