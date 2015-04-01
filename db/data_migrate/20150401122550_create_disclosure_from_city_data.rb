class CreateDisclosureFromCityData < ActiveRecord::Migration
  def change
    City.all.each do |city|
      unless city.asset_disclosure.blank?
        asset_disclosure = city.build_asset_disclosures
        asset_disclosure.url = city.asset_disclosure
        asset_disclosure.save!
      end
    end
  end
end
