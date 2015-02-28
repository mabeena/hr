class EmployeeTrainingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee_training, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @employee_trainings = EmployeeTraining.all
    respond_with(@employee_trainings)
    
  end

  def show
    respond_with(@employee_training)
  end

  def new
    @employee_training = EmployeeTraining.new
    respond_with(@employee_training)
  end

  def edit
  end

  def create
    @employee_training = EmployeeTraining.new(employee_training_params)
    @employee_training.save
    respond_with(@employee_training)
  end

  def update
    @employee_training.update(employee_training_params)
    respond_with(@employee_training)
  end

  def destroy
    @employee_training.destroy
    respond_with(@employee_training)
  end

  private
    def set_employee_training
      @employee_training = EmployeeTraining.find(params[:id])
    end

    def employee_training_params
      params.require(:employee_training).permit(:employee_id, :training_id, :tdate)
    end
end
