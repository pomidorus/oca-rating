module Api
  module V1
    class RegionsController < ApplicationController
      respond_to :json

      def index
        respond_with Region.all
      end
    end
  end
end

