class User < ActiveRecord::Base

  # relationships
  has_many :subscriptions
  has_many :programs, through: :subscriptions
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable
end
