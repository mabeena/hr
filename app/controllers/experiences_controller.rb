class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @experiences = Experience.order(startdate: :desc)
    @employees = Employee.order(fname: :asc)
    @experience = Experience.new
  end

  def show
    respond_with(@experience)
  end

  def new
    @experience = Experience.new
    respond_with(@experience)
  end

  def edit
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.save
    redirect_to experiences_url
  end

  def update
    @experience.update(experience_params)
    respond_with(@experience)
  end

  def destroy
    @experience.destroy
    respond_with(@experience)
  end

  private
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:title, :company, :startdate, :enddate, :field, :employee_id)
    end
end
