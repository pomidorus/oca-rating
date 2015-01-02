class MainController < ApplicationController
  def index
    @regions ||= Region.all
    @cities ||= City.all

    @cities = City.joins(:region).where('regions.uk_name = ?', params[:region]) if params[:region].present?

    @city_rating = CityRating.new @cities
    # @rating = 0
    # @cities.each do |city|
    #   @rating += CityRating.calculate city
    # end
    #
    # @rating_all = CityRating.total_calculate @cities
  end
end
