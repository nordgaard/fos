class CreateDayOfWeeks < ActiveRecord::Migration
  def change
    create_table :day_of_weeks do |t|
      t.string :day_of_week
      t.timestamps null: false
    end
  end
end
