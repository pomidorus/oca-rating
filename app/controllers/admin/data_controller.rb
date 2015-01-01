class Admin::DataController < ApplicationController
  def export
    @city = City.all
    respond_to do |format|
      format.csv { send_data @city.to_csv}
    end
  end

  def import
    City.import(params[:file]) if params[:file].present?
    redirect_to admin_root_url, notice: 'Города импортированы'
  end
end
