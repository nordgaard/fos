class AddOpenCloseHoursToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :open_hour, :integer
    add_column :locations, :close_hour, :integer
  end
end
