require_dependency "ux/application_controller"

module Ux
  class TesterController < ApplicationController
    layout 'ux/admin'

    def new
      @tester = Ux::Tester.new
    end

    def create
      Ux::Tester.create!(tester_params)
      redirect_to admin_path
    end

    private

    def tester_params
      params.require(:tester).permit(:name, :profession, :profile)
    end
  end
end
