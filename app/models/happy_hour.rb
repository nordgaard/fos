class HappyHour < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  belongs_to :day_of_week
  belongs_to :time_of_day

  validates :user_id, presence: true
  validates :location_id, presence: true
  validates :hype_title, presence: true
  validates :start_hour, presence: true
  validates :end_hour, presence: true
  validates :hype_description, presence: true
  validates :day_of_week_id, presence: true


end
