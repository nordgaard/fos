class Location < ActiveRecord::Base
  has_many :users, through: :user_drinks
  has_many :images
  has_many :categories, through: :categorized_locations
  has_many :happy_hours

  def show_image

    if images.first
      return images.first.image_url
    else
      return Image.find(11)
    end
  end
end
