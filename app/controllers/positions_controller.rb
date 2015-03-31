class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ex = Position.where(level: "E").order(name: :asc)
    @dir = Position.where(level: "D").order(name: :asc)
	#mgr
    @c3 = Position.where(level: "C3").order(name: :asc)
    @b3 = Position.where(level: "B3").order(name: :asc)
	#sup
    @c2 = Position.where(level: "C2").order(name: :asc)
    @b2 = Position.where(level: "B2").order(name: :asc)
    @c1 = Position.where(level: "C1").order(name: :asc)
    @b1 = Position.where(level: "C1").order(name: :asc)
	#tl
    @tl = Position.where(level: "A3").order(name: :asc)
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
      params.require(:position).permit(:name, :level, :role)
    end
end
