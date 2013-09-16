class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.integer :user_id
      t.string :year
      t.string :make
      t.string :model
      t.string :category
      t.integer :car_company_id

      t.timestamps
    end
  end
end
