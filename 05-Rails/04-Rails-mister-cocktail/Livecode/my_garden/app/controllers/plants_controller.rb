class PlantsController < ApplicationController
  before_action :set_garden, only: [:create]
  before_action :set_plant, only: [:destroy]


  def create
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show'
    end
  end

  def destroy
    @plant.destroy!
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
