class CitiesController < ApplicationController
  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
  end

  def show
  end

  def index
    @cities = City.all
    @cities_count = @cities.length
  end

  def edit
    @city = City.find(params[:id])
  end

  private

  def city_params
    params.require(:city).permit(:uk_title)
  end

end
