class HappyHour < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  has_many :day_of_weeks
  has_many :time_of_days
end
