class Location < ActiveRecord::Base
  has_many :users, through: :happy_hours
  has_many :images
  has_many :happy_hours

  mount_uploader :image, ImageUploader


  validate :do_not_repeat_coordinates
  validate :place_id_is_unique
  validates :name, presence: true


  def do_not_repeat_coordinates
    if Location.where('lng = ? AND lat = ?', lng, lat).any?
      errors.add(:location, "You have already liked this location, pick another")
    end
  end

  def place_id_is_unique
    if Location.where('place_id = ?', place_id).any?
      errors.add(:location, "You have already added this location, pick another")
    end
  end

  def flatten_string_array
    if types
      word = types.gsub!(/[^0-9A-Za-z,]/, '').split(",").join(", ")
      p word.slice!(0..-1)
      
    end
  end

end

# def delete_update_is_admin
#   if User.where('admin = ?', admin).false
# end

#   def show_image
#     if images.first
#       return images.first.image_url
#     else
#       return Image.find(11).image_url
#     end
#   end
# end
