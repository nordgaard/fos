class UserDrink < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  validate :do_not_repeat_happy_hour


  def do_not_repeat_happy_hour
    if UserDrink.where('user_id = ? AND location_id = ?', user_id, location_id).any?
      errors.add(:location, "You have already liked this location, pick another")
    end
  end
end
