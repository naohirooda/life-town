class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to root_path, notice: 'スポット登録ができました'
    else
      render :new
    end
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
    if @spot.update(spot_params)
      redirect_to root_path, notice: 'スポットを更新しました'
    else
      render :edit
    end      
  end

  private
  def spot_params
    params.require(:spot).permit(:kind, :name, :image, :url, :comment)
  end



end
