class User < ActiveRecord::Base

  # relationships
  has_many :subscriptions
  has_many :programs, through: :subscriptions
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  def role
    case user_type
    when 0
      :admin
    when 1
      :trainer
    when 2
      :customer
    else
      :public
    end
  end

  def name
    if first_name || last_name
      "#{first_name} #{last_name}" 
    else
      email
    end
  end

end
