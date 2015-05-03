class Position < ActiveRecord::Base
	ROLE_TYPES = ["Team Leader", "Supervisor", "Manager", "Human Resources"]
	LEVEL_TYPES = ["A3", "B1", "B2", "B3", "C1", "C2", "C3", "D", "E"]
	has_many :employees
	
	def pos_name
		name + ' ' + level
	end
	def position_rollup
		name + ' ' + level + ' ' + role
	end
	
	def pos_role
		name
	end
	
	def emp_role
		role.titleize
	end
	
	def self.search search_term
  		where(['level LIKE ?', "%#{search_term}%"])
  	end
end
