class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :uk_title
      t.string :lgs_link

      t.timestamps
    end
  end
end
