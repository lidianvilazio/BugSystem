class BugsController < ApplicationController
  before_action :authorized


  def index
    @bugs = current_user.bugs
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.create(bug_params)
    @bug.task
    redirect_to bugs_path
  end

  private
  def bug_params
    params.require(:bug).permit(:name, :description, :customer_id)
  end
end
