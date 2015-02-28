class HomeController < ApplicationController 
  def index
  	@educations = Education.all
  	@experiences = Experience.all
  	@skills = Skill.all
  	@trainings = Training.all
  end
end
