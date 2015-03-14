class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	ROLE_TYPES = ["Manager", "Supervisor", "Team Leader", "Human Resources"]
	LEVEL_TYPES = ["A3", "B1", "B2", "B3", "C1", "C2", "C3", "D", "E"]
    
    has_many :evaluations
    has_many :experiences
    has_many :employee_trainings
    has_many :employee_skills
    has_many :employee_educations

	def employee_name
		fname + ' ' + lname + ' ' + level
	end
	
end

