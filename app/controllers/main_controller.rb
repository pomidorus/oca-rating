class MainController < ApplicationController
  def index
    @regions ||= Region.all
    @cities ||= City.all
  end
end
