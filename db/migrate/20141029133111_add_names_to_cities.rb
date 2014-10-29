class AddNamesToCities < ActiveRecord::Migration
  def change
    add_column :cities, :ru_title, :string
    add_column :cities, :en_title, :string
  end
end
