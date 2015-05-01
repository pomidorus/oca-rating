class CreateUxTesters < ActiveRecord::Migration
  def change
    create_table :ux_testers do |t|
      t.string :name
      t.string :access_code
      t.string :profession
      t.string :profile

      t.timestamps
    end
    add_index :ux_testers, :access_code
  end
end
