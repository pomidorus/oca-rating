class RegionsController < ApplicationController
  def index
    @regions ||= Region.all
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    region = Region.find(params[:id])
    if region.update_attributes(region_params)
      redirect_to :back
    end
  end

  private
  def region_params
    params.require(:region).permit(:uk_name)
  end

end
