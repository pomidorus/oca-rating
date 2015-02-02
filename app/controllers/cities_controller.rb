class CitiesController < ApplicationController
  respond_to :html

  def new
    @city = City.new
    @city.build_budget
  end

  def create
    @city = City.create(city_params)
  end

  def show
    @city = City.find(params[:id])
  end

  def index
    @cities = City.all
    @cities_count = @cities.length
  end

  def edit
    @city = City.find(params[:id])
    @city.build_budget if @city.budget.nil?
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(city_params)
      flash[:notice] = "Successfully updated product."
    end
    respond_with(@city)
  end

  private

  def city_params
    params.require(:city).permit(:uk_title, :region_id, :link, :asset_disclosure, budget_attributes: [:id, :url])
  end

end
