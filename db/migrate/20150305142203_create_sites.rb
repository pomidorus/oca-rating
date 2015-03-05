class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :url
      t.belongs_to :city

      t.timestamps
    end
    add_index :sites, :city_id
  end
end
