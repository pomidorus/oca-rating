require 'rails_helper'

RSpec.describe DatasetsController, :type => :controller do

  describe "GET local_site" do
    it "returns http success" do
      get :local_site
      expect(response).to be_success
    end
  end

  describe "GET asset_disclosure" do
    it "returns http success" do
      get :asset_disclosure
      expect(response).to be_success
    end
  end

end
