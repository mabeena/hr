class EmployeeEducation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :education
	
	def ed_name
		education.education_name
	end
	def emp_name
		employee.employee_name
	end
end
