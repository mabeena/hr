class EmployeeSkill < ActiveRecord::Base
	belongs_to :employee
	belongs_to :skill

	def sk_name
		skill.skill_name
	end
	def emp_name
		employee.employee_name
	end
	def skArrary
		a = EmployeeSkill.joins(:skill, :employee).select("skill_id", "employee_id")
		b = EmployeeSkill.joins(:employee).select("employee_id")
		c = a.pluck("employee_id", "skill_id")
		d = a.pluck("employee_id")
		return c
	end
end