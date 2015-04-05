class EvaluationsController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @evaluations = Evaluation.all
    @evaluation = Evaluation.all
    @employees = Employee.order(fname: :asc)
    @raters = Evaluation.all
  end

  def show
    #redirect_to evaluations_url
    respond_with(@evaluation)
  end

  def new
    @evaluation = Evaluation.new
    @employees = Employee.order(lname: :asc)
    respond_with(@evaluation)
  end

  def edit
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.save
    redirect_to @evaluation
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
      params.require(:evaluation).permit(:employee_id, :rater_id, :gScore, :qScore, :iScore, :rScore, :aScore, :mScore, :isScore, :owScore, :dScore, :oScore, :kScore, :pScore, :lScore, :evalScore, :avgScore)
    end
end
