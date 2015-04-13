class PromotionsController < ApplicationController 
	def index
		if params[:search]
      		@evaluations = Evaluation.search(params[:search])
      		#@skills = Skill.search(params[:search])
    	else
      		@evaluations = Evaluation.all
      		#@skills = Skill.all
    	end
		
	    @education_search = Education.search(params[:education_degree]).all
		@position_search = Position.search(params[:position_level]).all
		@skill_search = Skill.search(params[:skill_name]).all
		@rating_search = Evaluation.search(params[:evalScore]).all
      	@employees = Employee.all
 	  	@educations = Education.all
 	  	@skills = Skill.all
 	  	@edu_cations = @education_search.uniq.pluck(:degree)
 	  	@pos_itions = @position_search.uniq.pluck(:level)
 	  	@sk_ills = @skill_search.uniq.pluck(:name)
 		@employee_educations = EmployeeEducation.all
 		@employee_skills = EmployeeSkill.all
 		@positions = Position.all
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



