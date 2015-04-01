class PromotionsController < ApplicationController 
  def index
  	@q = Employee.ransack(params[:q])
  	@people = @q.result.includes(:employee_educations)
  end
  def show
  end
end
