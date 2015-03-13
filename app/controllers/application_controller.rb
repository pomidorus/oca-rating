class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :calculate_count

  private
  def calculate_count
    @cities_count ||= City.count
    @links_count ||= City.links_count
  end
end
