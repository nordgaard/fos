class ChangeNameForDayOfWeekForHappyHours < ActiveRecord::Migration
  def change
    remove_column :happy_hours, :day_of_week, :string
    add_column :happy_hours, :day_of_week_id, :integer
  end
end
