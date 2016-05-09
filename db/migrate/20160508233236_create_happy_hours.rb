class CreateHappyHours < ActiveRecord::Migration
  def change
    create_table :happy_hours do |t|
      t.integer :drinkery_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :deal

      t.timestamps null: false
    end
  end
end
