require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET about_project" do
    it "returns http success" do
      get :about_project
      expect(response).to be_success
    end
  end

end
