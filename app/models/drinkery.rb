class Drinkery < ActiveRecord::Base
  has_many :happy_hours
  has_many :users
end
