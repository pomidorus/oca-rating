class CitiesController < ApplicationController
  respond_to :html
  before_filter :find_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
    @cities_count = @cities.length
  end

  def show
  end

  # new
  def new
    @city = City.new
    @city.build_site
    @city.build_budget
    @city.build_asset_disclosures
  end

  def create
    @city = City.create!(city_params)
    redirect_to :admin_root
  end

  # edit
  def edit
    @city.build_site if @city.site.nil?
    @city.build_budget if @city.budget.nil?
    @city.build_asset_disclosures if @city.asset_disclosures.nil?
  end

  def update
    if @city.update_attributes(city_params)
      flash[:notice] = "Successfully updated product."
    end
    redirect_to :admin_root
  end

  def destroy
    @city.destroy
    redirect_to :admin_root
  end

  private

  def city_params
    params.require(:city).permit(:uk_title, :region_id, site_attributes: [:id, :url],
                                 asset_disclosures_attributes: [:id, :url], budget_attributes: [:id, :url], )
  end

  def find_city
    @city = City.find_by_slug!(params[:id])
  end
end
