class Evaluation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :position
	
	def pos_name
		position.position_name
	end
end
