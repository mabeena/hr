class HomeController < ApplicationController 
  def index
  	if employee_signed_in? && current_employee.emp_role == "Human Resources"
  	  	@org_educations = EmployeeEducation.joins(:education).select("degree").order(id: :asc)
  		@org_skills = EmployeeSkill.joins(:skill).select("name")
  		@org = Position.joins('LEFT OUTER JOIN employees ON employees.position_id = positions.id')
  		@org_role = @org.order(role: :desc)
    elsif employee_signed_in? && current_employee.emp_role.present?
      	redirect_to evaluations_path
    else
    end
  end
  
  def show
  end
end

