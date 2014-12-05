module Api
  module V1
    class CitiesController < ApplicationController
      respond_to :json

      def index
        cities = params[:region_id].present? ? City.joins(:region).where('regions.id = ?', params[:region_id]) : City.all
        respond_with cities
      end
    end
  end
end
