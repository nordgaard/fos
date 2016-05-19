class Category < ActiveRecord::Base
  has_many :locations, through: :categorized_locations
  has_many :categorized_locations
end
