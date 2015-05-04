require_dependency "ux/application_controller"

module Ux
  class HomeController < ApplicationController
    def index
      unless current_tester.present?
        redirect_to login_path
      end
    end
  end
end
