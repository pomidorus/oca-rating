class AddRegionToCity < ActiveRecord::Migration
  def change
    add_reference :cities, :region, index: true
  end
end
