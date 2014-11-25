class MainController < ApplicationController
  def index
    @regions ||= Region.all

    @cities ||= City.all
    @cities = City.joins(:region).where('regions.uk_name = ?', params[:region]) if params[:region].present?
    end
end
