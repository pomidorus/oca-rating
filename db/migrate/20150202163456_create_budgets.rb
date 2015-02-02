class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :url
      t.integer :city_id

      t.timestamps
    end
  end
end
