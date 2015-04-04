class Promotion < ActiveRecord::Base

	def search_promotions
		educations = Education.all
# 		skill = Skill.all
# 		position = Position.all

		educations = educations.where("degree like ?", degree) if degree.present?
# 		skill = skill.where("name like ?", name) if name.present?
# 		position = position.where("level like ?", level) if level.present?
		return educations
	end
	
	
end
