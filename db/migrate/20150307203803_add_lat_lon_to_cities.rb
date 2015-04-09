class AddLatLonToCities < ActiveRecord::Migration
  def change
    add_column :cities, :latlon, :point, :geographic => true
  end
end
