class CitiesController < ApplicationController
  respond_to :html

  def index
    @cities = City.all
    @cities_count = @cities.length
  end

  def show
    @city = City.find(params[:id])
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
    @city = City.find(params[:id])
    @city.build_site if @city.site.nil?
    @city.build_budget if @city.budget.nil?
    @city.build_asset_disclosures if @city.asset_disclosures.nil?
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(city_params)
      flash[:notice] = "Successfully updated product."
    end
    redirect_to :admin_root
  end

  private

  def city_params
    params.require(:city).permit(:uk_title, :region_id, :link, site_attributes: [:id, :url],
                                 asset_disclosures_attributes: [:id, :url], budget_attributes: [:id, :url], )
  end

end
