class Skill < ActiveRecord::Base
	SKILL_LEVELS = ["beginner","intermediate", "advanced"]
	SKILL_TYPES = ["technical", "non-technical"]
	has_many :employee_skills
end
