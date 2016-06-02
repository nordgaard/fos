class ChangeAllLocationAttributes < ActiveRecord::Migration
  def change
    remove_column :locations, :latitude, :float
    remove_column :locations, :longitude, :float
    remove_column :locations, :address, :string
    remove_column :locations, :open_hour, :integer
    remove_column :locations, :close_hour, :integer
    remove_column :locations, :city, :string
    remove_column :locations, :state, :string
    remove_column :locations, :zip, :integer
    remove_column :locations, :created_at, :datetime
    remove_column :locations, :updated_at, :datetime

    add_column :locations, :place_id, :string    
    add_column :locations, :lat, :float    
    add_column :locations, :lng, :float
    add_column :locations, :icon, :string
  end
end
