class ChangeHappyHourAttributes < ActiveRecord::Migration
  def change
    remove_column :happy_hours, :deal, :string
    add_column :happy_hours, :hype_title, :string
    add_column :happy_hours, :hype_description, :text
  end
end
