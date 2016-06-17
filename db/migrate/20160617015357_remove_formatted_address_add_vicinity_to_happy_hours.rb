class RemoveFormattedAddressAddVicinityToHappyHours < ActiveRecord::Migration
  def change
    remove_column :locations, :formatted_address, :string
    remove_column :locations, :formatted_phone_number, :string
    add_column :locations, :vicinity, :string
  end
end
