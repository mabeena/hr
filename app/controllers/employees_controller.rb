class EmployeesController < ApplicationController

  def index
	@employees = Employee.joins(:position).select("*")
	@positions = Position.all
  end
  
  def edit_indy
    @employees = Employee.order(position_id: :asc)
  end

  def update_indy
	Employee.update(params[:employees].keys, params[:employees].values)  
	redirect_to employees_url   
  end
  
end