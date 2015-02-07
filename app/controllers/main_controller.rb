class MainController < ApplicationController
  def index
    @regions ||= Region.all
    @cities  ||= City.all.to_a

    @cities  = City.joins(:region).where('regions.uk_name = ?', params[:region]).to_a if params[:region].present?

    @city_rating = CityRating.new @cities
    @cities.sort! {|x,y| @city_rating.position_of(x) <=> @city_rating.position_of(y)}

    @first_city = @cities[0]
  end
end
