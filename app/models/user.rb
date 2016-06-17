class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :locations, through: :happy_hours
  has_many :happy_hours

  validate :do_not_repeat_happy_hour

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def do_not_repeat_email
    if User.where('email = ?', email).any?
      errors.add(:location, "This email is already in our system")
    end
    
  end


end
