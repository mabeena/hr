class PromotionsController < ApplicationController 
  def index
   if params[:search]
      @employees = Employee.search(params[:search])

     @educations = Education.where('degree LIKE ?', params[:search])
     @positions = Position.where('level LIKE ?', params[:search])
    #    @employees = Employee.search(params)
    else
         @employees = Employee.all
      
     end
  	   @educations = Education.all
  	   @employee_educations = EmployeeEducation.all
       @positions = Position.all
       @evaluations = Evaluation.all

   
  end


  def show
  end
end




