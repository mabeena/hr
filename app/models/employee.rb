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
end
