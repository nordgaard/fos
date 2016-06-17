class DayOfWeek < ActiveRecord::Base
  has_many :happy_hours 
end
