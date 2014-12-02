class Admin::RegionsController < ApplicationController

  def index
    @regions ||= Region.all
  end

  def edit
    @region = Region.find(params[:id])
  end
end
