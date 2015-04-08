class MainController < ApplicationController
  def index
    @regions ||= Region.includes(:cities)
    @region_header ||= Region.get_header params[:region]

    @cities ||= City.get_all params[:region]
    City.sort_by_rating @cities

    # @first_city = @cities[0]
    # @budget_percent = 0
    # @budget_percent = (Budget.all.count*100) / City.all.count unless City.all.count == 0
    # @current_location = current_location
  end
end
