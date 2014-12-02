class Admin::AdminController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'password'

  def index
    @cities = City.all
  end
end
