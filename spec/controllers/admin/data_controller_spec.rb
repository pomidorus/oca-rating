require 'rails_helper'

RSpec.describe Admin::DataController, :type => :controller do

  describe "GET export" do
    it "returns http success" do
      get :export
      expect(response).to be_success
    end
  end

  describe "GET import" do
    it "returns http success" do
      get :import
      expect(response).to be_success
    end
  end

end
