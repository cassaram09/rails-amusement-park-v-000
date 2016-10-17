class AttractionsController < ApplicationController
  before_filter :find_attraction, only: [ :show, :edit, :update, :destroy]
  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def show
    @ride = Ride.new
  end

  def edit
  end

  def update
    @attraction.update(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def destroy
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
  end
  def find_attraction
    @attraction = Attraction.find_by(id: params[:id])
  end
end
