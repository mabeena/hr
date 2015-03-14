class EmployeeTraining < ActiveRecord::Base
	belongs_to :employee
	belongs_to :training

	def tr_name
		training.training_name
	end
	def emp_name
		employee.employee_name
	end
	def tname
		training.name
	end
end
