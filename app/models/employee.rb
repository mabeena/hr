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
	
	def posrole
		position.pos_role
	end
	
	def emprole
		position.emp_role
	end
	
	def employee_name
		a = fname + ' ' + lname
		a.titleize
	end
	
	def emp_role
		position.emp_role
	end
	def emp_title
		b = "(#{emp_role})"
		a = position.pos_role
		c = a.titleize + ' '+ b.upcase
		return c
	end

	
	def self.search(query)
    	where("fname like ? OR lname like ?", "%#{query}%", "%#{query}%")    
	end
  	
	def etest
		e = Employee.all
		return e
	end
 
end

