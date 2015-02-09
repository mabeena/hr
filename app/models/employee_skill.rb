class EmployeeSkill < ActiveRecord::Base
	belongs_to :employees
	belongs_to :skills
end
