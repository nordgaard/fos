class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :locations, through: :happy_hours
  has_many :happy_hours

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end
