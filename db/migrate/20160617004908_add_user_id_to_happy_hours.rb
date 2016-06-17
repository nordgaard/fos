class AddUserIdToHappyHours < ActiveRecord::Migration
  def change
    add_column :happy_hours, :user_id, :integer
  end
end
