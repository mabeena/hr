class Training < ActiveRecord::Base
	TRAINING_TYPES = ["technical", "business"]
	has_many :employee_trainings

	def training_name
		name + ' ' + ttype
	end
end
