class Education < ActiveRecord::Base
	ED_TYPES = ["diploma/GED","bachelor's", "master's"]

	has_many :employee_educations
	
	def conName
		concentration.humanize
	end
	def education_name
		degree + ' ' + concentration
	end
	def deg
		degree
	end

	def self.search search_term
  		where(['degree LIKE ?', "%#{search_term}%"])
  	end

end
