class HappyHour < ActiveRecord::Base
  belongs_to :location
  has_many :user_drinks
  has_many :users, through: :user_drinks
end
