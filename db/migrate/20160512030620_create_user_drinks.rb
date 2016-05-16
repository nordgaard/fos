class CreateUserDrinks < ActiveRecord::Migration
  def change
    create_table :user_drinks do |t|
      t.integer :drinkery_id
      t.integer :user_id

      t.timestamps null: true
    end
  end
end
