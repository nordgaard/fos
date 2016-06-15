class Image < ActiveRecord::Base
  belongs_to :location
  mount_uploader :image, ImageUploader

end
