class Experience < ActiveRecord::Base
	IND_TYPES = ["business", "health care", "technology", "construction", "creative", "banking", 
				 "retail", "telecommunications", "energy"]
	
	belongs_to :employee
	
	def emp_name
		employee.employee_name
	end
end
