class TrainingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_training, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trainings = Training.all
    @training = Training.new
    respond_with(@training)
  end

  def show
    respond_with(@training)
  end

  def new
    @training = Training.new
    respond_with(@training)
  end

  def edit
  end

  def create
    @training = Training.new(training_params)
    @training.save
    redirect_to trainings_url
  end

  def update
    @training.update(training_params)
    respond_with(@training)
  end

  def destroy
    @training.destroy
    respond_with(@training)
  end

  private
    def set_training
      @training = Training.find(params[:id])
    end

    def training_params
      params.require(:training).permit(:name)
    end
end
