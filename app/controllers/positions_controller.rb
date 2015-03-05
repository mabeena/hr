class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales = Position.where(segment: "sales").order(name: :asc)
    @marketing = Position.where(segment: "marketing").order(name: :asc)
    @rnd = Position.where(segment: "research & development").order(name: :asc)
    @procurement = Position.where(segment: "procurement").order(name: :asc)
    @hr = Position.where(segment: "human resources").order(name: :asc)
    @finance = Position.where(segment: "finance").order(name: :asc)
    @position = Position.new
    respond_with(@position)
  end

  def show
    respond_with(@position)
  end

  def new
    @position = Position.new
    respond_with(@position)
  end

  def edit
  end

  def create
    @position = Position.new(position_params)
    @position.save
    redirect_to positions_url
  end

  def update
    @position.update(position_params)
    respond_with(@position)
  end

  def destroy
    @position.destroy
    respond_with(@position)
  end

  private
    def set_position
      @position = Position.find(params[:id])
    end

    def position_params
      params.require(:position).permit(:name, :segment)
    end
end
