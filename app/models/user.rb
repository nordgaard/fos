class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :locations, through: :user_drinks
  has_many :user_drinks


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end
