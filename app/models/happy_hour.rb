class HappyHour < ActiveRecord::Base
  belongs_to :drinkery
  has_many :user_drinks
  has_many :users, through: :user_drinks
end
