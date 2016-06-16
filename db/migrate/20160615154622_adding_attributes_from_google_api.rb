class AddingAttributesFromGoogleApi < ActiveRecord::Migration
  def change
    remove_column :locations, :image, :string
    add_column :locations, :minprice, :integer
    add_column :locations, :maxprice, :integer
    add_column :locations, :price_level, :integer
    add_column :locations, :formatted_address, :string
    add_column :locations, :formatted_phone_number, :string
    add_column :locations, :website, :string
    add_column :locations, :types, :text
    add_column :locations, :photos, :text
    add_column :locations, :opening_hours, :text
  end
end
