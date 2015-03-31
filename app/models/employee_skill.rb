class EmployeeSkill < ActiveRecord::Base
	belongs_to :employee
	belongs_to :skill

	def sk_name
		skill.skill_name
	end
	def emp_name
		employee.employee_name
	end
end
