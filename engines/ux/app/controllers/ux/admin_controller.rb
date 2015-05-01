require_dependency "ux/application_controller"

module Ux
  class AdminController < ApplicationController
    http_basic_authenticate_with name: 'admin', password: 'YjMrbD5jKd'
    layout 'ux/admin'

    def index
      @testers = Ux::Tester.all
    end
  end
end
