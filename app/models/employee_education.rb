class EmployeeEducation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :education
end
