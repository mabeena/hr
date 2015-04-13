class Skill < ActiveRecord::Base
	SKILL_TYPES = ["technical", "business"]
	has_many :employee_skills

	def skillName
		name.humanize
	end
	def skill_name
		name
	end
	def self.search search_skill
  		where(['name LIKE ?', "%#{search_skill}%"])
  	end
end
