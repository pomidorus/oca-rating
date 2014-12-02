require 'rails_helper'

RSpec.describe Admin::AdminController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET regions" do
    it "returns http success" do
      get :regions
      expect(response).to be_success
    end
  end

end
