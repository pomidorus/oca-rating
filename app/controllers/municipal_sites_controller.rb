class MunicipalSitesController < ApplicationController
  def index
    @sites = Site.with_city
  end
end
