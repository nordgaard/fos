class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :drinkery_id
      t.integer :user_id
      t.text :caption

      t.timestamps null: false
    end
  end
end
