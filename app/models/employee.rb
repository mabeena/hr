class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    
    has_many :evaluations
    has_many :experiences
    has_many :employee_trainings
    has_many :employee_skills
    has_many :employee_educations
    belongs_to :position
	
	def employee_name
		a = fname + ' ' + lname
		a.titleize
	end
	
	def emp_role
		position.role
	end

	
	def self.search(query)
    	where("fname like ? OR lname like ?", "%#{query}%", "%#{query}%") 
    end	
end

