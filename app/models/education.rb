class Education < ActiveRecord::Base
	ED_TYPES = ["diploma/GED","bachelor's", "master's"]

	has_many :employee_educations
	
	def conName
		concentration.humanize
	end
end
