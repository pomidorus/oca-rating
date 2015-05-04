module Ux
  class ApplicationController < ActionController::Base
    helper_method :current_tester

    private

    def current_tester
      @current_tester ||= Ux::Tester.find(session[:tester_id]) if session[:tester_id]
    end
  end
end
