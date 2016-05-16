class UserDrink < ActiveRecord::Base
  belongs_to :drinkery
  belongs_to :user
end
