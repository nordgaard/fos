class CreateDrinkeries < ActiveRecord::Migration
  def change
    create_table :drinkeries do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :website
      t.integer :open_hour
      t.integer :close_hour

      t.timestamps null: false
    end
  end
end
