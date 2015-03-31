class Position < ActiveRecord::Base
	ROLE_TYPES = ["Team Leader", "Supervisor", "Manager", "Human Resources"]
	LEVEL_TYPES = ["A3", "B1", "B2", "B3", "C1", "C2", "C3", "D", "E"]
	has_many :employees
	
	def pos_name
		name + ' ' + level
	end
end
