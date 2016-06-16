class RemoveMinAndMaxPrice < ActiveRecord::Migration
  def change
    remove_column :locations, :minprice, :integer
    remove_column :locations, :maxprice, :integer
  end
end
