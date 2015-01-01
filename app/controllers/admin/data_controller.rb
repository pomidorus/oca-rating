class Admin::DataController < ApplicationController
  def export
    @city = City.all
    respond_to do |format|
      format.csv { send_data @city.to_csv}
    end
  end

  def import
  end
end
