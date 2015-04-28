class Admin::AdminController < ApplicationController
  layout 'admin'

  http_basic_authenticate_with name: 'admin', password: 'YjMrbD5jKd'

  def index
    @cities = City.includes(:site, :asset_disclosures, :budget)
  end
end
