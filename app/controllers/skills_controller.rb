class SkillsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tech = Skill.where(stype: "technical").order(name: :asc)
    @bizness = Skill.where(stype: "business").order(name: :asc)
    @skill = Skill.new
    respond_with(@skills)
  end

  def show
    rsespond_with(@skill)
  end

  def new
    @skill = Skill.new
    respond_with(@skill)
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.save
    redirect_to skills_url
  end

  def update
    @skill.update(skill_params)
    respond_with(@skill)
  end

  def destroy
    @skill.destroy
    respond_with(@skill)
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :stype)
    end
end
