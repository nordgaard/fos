class Location < ActiveRecord::Base
  has_many :users, through: :user_drinks
  has_many :images
  has_many :categories, through: :categorized_locations
  has_many :happy_hours
end
