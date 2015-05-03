class PromotionsController < ApplicationController 
	def index
	    @education_search = Education.search(params[:education_degree]).all
		@position_search = Position.search(params[:position_level]).all
		@skill_search = Skill.search(params[:skill_name]).all
		
		
 	  	
 	  	@edu_cations = @education_search.uniq.pluck(:degree)
 	  	@pos_itions = @position_search.uniq.pluck(:level)
 	  	@sk_ills = @skill_search.uniq.pluck(:name)
 	  	
 	  	@employees = Employee.all
 	  	@educations = Education.all
 	  	@employee_skills = EmployeeSkill.all
 	  	@skill = Skill.all
 		@employee_educations = EmployeeEducation.all
 		@positions = Position.all
 		@evaluations = Evaluation.all
 		
 		@a = EmployeeSkill.joins(:skill, :employee).select("skill_id", "employee_id", "name")
    end
	def create
		@promotions = Promotion.create(search_params)
		@promotion.employee_id = params[:id]
		redirect_to promotions_url
	end
	def show
		@evaluation = Evaluation.all
		@employee = Employee.all
		@employee_education = EmployeeEducation.all
		@employee_skill = EmployeeSkill.all
	end

	private
	def search_params
 		params.require(:search).permit(:degree, :level, :name)
 	end
end



