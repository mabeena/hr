class EmployeeSkillsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee_skill, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
  	@employees = Employee.all
  	@skills = Skill.all
    @employee_skills = EmployeeSkill.all
    @employee_skill = EmployeeSkill.new
    respond_with(@employee_skills)
  end

  def show
    respond_with(@employee_skill)
  end

  def new
    @employee_skill = EmployeeSkill.new
    respond_with(@employee_skill)
  end

  def edit
  end

  def create
    @employee_skill = EmployeeSkill.new(employee_skill_params)
    @employee_skill.save
    redirect_to employee_skills_url
  end

  def update
    @employee_skill.update(employee_skill_params)
    respond_with(@employee_skill)
  end

  def destroy
    @employee_skill.destroy
    respond_with(@employee_skill)
  end

  private
    def set_employee_skill
      @employee_skill = EmployeeSkill.find(params[:id])
    end

    def employee_skill_params
      params.require(:employee_skill).permit(:employee_id, :skill_id, :level)
    end
end
