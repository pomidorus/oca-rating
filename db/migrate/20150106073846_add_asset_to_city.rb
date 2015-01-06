class AddAssetToCity < ActiveRecord::Migration
  def change
    add_column :cities, :asset_disclosure, :string
  end
end
