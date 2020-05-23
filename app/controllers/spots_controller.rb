class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    Spot.create(spot_params)
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    spot = Spot.find(params[:id])
    spot.update(spot_params)
  end

  private
  def spot_params
    params.require(:spot).permit(:type, :name, :image, :url, :comment)
  end



end
