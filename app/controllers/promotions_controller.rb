class PromotionsController < ApplicationController 
#   def index
# #   	if params[:search]
# #       	@employees = Employee.search(params[:search])
# #       	@educations = Education.where('degree LIKE ?', params[:search])
# #       	@positions = Position.where('level LIKE ?', params[:search])
#     #    @employees = Employee.search(params)
# #	else
#     	@employees = Employee.all
#       
# #     end
#   	   	@educations = Education.all
#   	   	@employee_educations = EmployeeEducation.all
#        	@positions = Position.all
#        	@evaluations = Evaluation.all
#   end
# 
# 
#   def show
#   end
# end

	def index
# 		@promotions = Promotion.new 
	    @education_search = Education.search(params[:education_degree]).all
		@position_search = Position.search(params[:position_level]).all
      	@employees = Employee.all
 	  	@educations = Education.all
 	  	@edu_cations = @education_search.uniq.pluck(:degree)
 	  	@pos_itions = @position_search.uniq.pluck(:level)
 		@employee_educations = EmployeeEducation.all
 		@positions = Position.all
 		@evaluations = Evaluation.all
    end
# 		
# 		@degree = Education.uniq.pluck(:degree)
# 		@level = Position.uniq.pluck(:level)
# 		@name = Skill.uniq.pluck(:name)
	def create
		@promotions = Promotion.create(search_params)
		@promotion = Promotion.find(params[:id])
		redirect_to promotions_url
	end
	def show
#		@search = Search.find(params[:id])
	end

	private
	def search_params
 		params.require(:search).permit(:degree, :level, :name)
 	end
end



