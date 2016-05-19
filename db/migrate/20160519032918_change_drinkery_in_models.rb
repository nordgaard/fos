class ChangeDrinkeryInModels < ActiveRecord::Migration
  def change
    rename_column :happy_hours, :drinkery_id, :location_id
    rename_column :images, :drinkery_id, :location_id
    rename_column :user_drinks, :drinkery_id, :location_id
  end
end
