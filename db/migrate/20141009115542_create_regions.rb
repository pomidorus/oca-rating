class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :uk_name

      t.timestamps
    end
  end
end
