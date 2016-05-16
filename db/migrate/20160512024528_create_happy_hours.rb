class CreateHappyHours < ActiveRecord::Migration
  def change
    create_table :happy_hours do |t|
      t.text :deal
      t.string :day_of_week
      t.integer :start_hour
      t.integer :end_hour
      t.integer :drinkery_id

      t.timestamps null: true
    end
  end
end
