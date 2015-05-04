require_dependency "ux/application_controller"

module Ux
  class SessionsController < ApplicationController
    def new
    end

    def create
      tester = Ux::Tester.authenticate(params[:access_code])
      if tester
        session[:tester_id] = tester.id
        redirect_to root_path
      else
        redirect_to :back
      end
    end

    def destroy
    end
  end
end
