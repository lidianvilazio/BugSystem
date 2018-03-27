class BugsController < ApplicationController
  before_action :authorized

  def index
    @bugs = current_custormer.bugs
  end
end
