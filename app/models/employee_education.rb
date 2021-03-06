class EmployeeEducation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :education
	
	validates :employee_id, uniqueness: true
  
	def ed_name
		education.education_name
	end
	def degree_type
		education.degree.humanize
	end
	def degree_con
		education.conName
	end
	def degree_deg
		education.deg
	end
	def emp_name
		employee.employee_name
	end
end
