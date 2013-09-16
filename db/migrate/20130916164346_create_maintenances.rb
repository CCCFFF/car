class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :maintenance_category_id
      t.datetime :date
      t.integer :cost
      t.integer :mileage

      t.timestamps
    end
  end
end
