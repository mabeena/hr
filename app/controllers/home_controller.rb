class HomeController < ApplicationController 
  def index
  	@org_educations = EmployeeEducation.joins(:education).select("degree").order(id: :asc)
  	@org_skills = EmployeeSkill.joins(:skill).select("name")
  	@org = Position.joins('LEFT OUTER JOIN employees ON employees.position_id = positions.id')
  	@org_role = @org.order(role: :desc)
  end
  def show
  end
end
