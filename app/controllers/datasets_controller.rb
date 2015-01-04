class DatasetsController < ApplicationController
  def local_site
    @cities ||= City.all
  end

  def asset_disclosure
  end
end
