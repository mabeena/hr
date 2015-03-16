class EvaluationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @evaluations = Evaluation.all
    @positions = Position.all
    @employees = Employee.order(fname: :asc)
    @evaluation = Evaluation.new
  end

  def show
    respond_with(@evaluation)
  end

  def new
    @evaluation = Evaluation.new
    respond_with(@evaluation)
  end

  def edit
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.save
    redirect_to evaluations_url
  end

  def update
    @evaluation.update(evaluation_params)
    respond_with(@evaluation)
  end

  def destroy
    @evaluation.destroy
    respond_with(@evaluation)
  end

  private
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    def evaluation_params
      params.require(:evaluation).permit(:sdate, :edate, :communication, :attitude, :character, :potential, :performance, :employee_id, :position_id)
    end
end
