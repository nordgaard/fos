class DropHappyHourTable < ActiveRecord::Migration
  def up
    drop_table :happy_hours
  end
end
