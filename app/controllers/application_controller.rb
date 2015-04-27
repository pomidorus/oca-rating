class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :calculate_count

  private
  def calculate_count
    @cities_count ||= City.count
    @links_count ||= Site.all.size + AssetDisclosure.all.size + Budget.all.size
  end
end
