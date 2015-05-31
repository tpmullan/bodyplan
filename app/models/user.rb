class User < ActiveRecord::Base

  # relationships
  has_many :subscriptions
  has_many :programs, through: :subscriptions
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :profile_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "icons/profile.png"
  geocoded_by :current_sign_in_ip


  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/

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
