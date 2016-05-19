class CreateCategorizedLocations < ActiveRecord::Migration
  def change
    create_table :categorized_locations do |t|
      t.string :location_id
      t.string :category_id

      t.timestamps null: false
    end
  end
end
