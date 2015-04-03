class PromotionsController < ApplicationController 
  def index
  #@employee_educations = Education.joins(:employee_educations).select("degree")
  @educations = Education.select("degree")
  end
  def show
  end
end
