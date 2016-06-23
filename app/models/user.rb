class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :follower_follows

  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
  has_many :followees, through: :followee_follows

  has_many :locations, through: :happy_hours
  has_many :happy_hours

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end
