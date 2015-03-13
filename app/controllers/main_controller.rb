class MainController < ApplicationController
  def index
    @regions ||= Region.all

    @cities  ||= City.all.to_a
    @cities  ||= City.joins(:region).where('regions.uk_name = ?', params[:region]).to_a if params[:region].present?
    @first_city = @cities[0]

    @region_header = params[:region].present? ? "#{params[:region]} область" : 'Все области'
    if (params[:region] == 'АР Крим') then @region_header = params[:region] end

    @city_rating = CityRating.new @cities
    @cities.sort! {|x,y| @city_rating.position_of(x) <=> @city_rating.position_of(y)}

    @budget_percent = 0
    @budget_percent = (Budget.all.count*100) / City.all.count unless City.all.count == 0

    @current_location = current_location
  end
end
