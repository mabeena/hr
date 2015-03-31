class Skill < ActiveRecord::Base
	SKILL_TYPES = ["technical", "business"]
	has_many :employee_skills

	def skillName
		name.humanize
	end
	def skill_name
		name + ' ' + stype
	end
end
