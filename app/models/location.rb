class Location < ActiveRecord::Base
  has_many :users, through: :user_drinks
  has_many :images
  has_many :categories, through: :categorized_locations
  has_many :happy_hours


  validate :do_not_repeat_coordinates


  def do_not_repeat_coordinates
    if Location.where('longitude = ? AND latitude = ?', latitude, longitude).any?
      errors.add(:location, "You have already liked this location, pick another")
    end
  end


  def show_image
    if images.first
      return images.first.image_url
    else
      return Image.find(11).image_url
    end
  end
end
