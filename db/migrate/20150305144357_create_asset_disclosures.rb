class CreateAssetDisclosures < ActiveRecord::Migration
  def change
    create_table :asset_disclosures do |t|
      t.string :url
      t.belongs_to :city

      t.timestamps
    end
    add_index :asset_disclosures, :city_id
  end
end
