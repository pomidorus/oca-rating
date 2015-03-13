class RemoveAssetDisclosureFromCity < ActiveRecord::Migration
  def change
    remove_column :cities, :asset_disclosure
  end
end
