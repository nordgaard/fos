class Drinkery < ActiveRecord::Base
  has_many :users, through: :user_drinks
  has_many :user_drinks
  has_many :happy_hours
end
