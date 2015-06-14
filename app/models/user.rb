class User < ActiveRecord::Base

  # relationships
  has_many :identities
  has_many :subscriptions
  has_many :programs, through: :subscriptions
  has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:google_oauth2, :facebook, :twitter]

  has_attached_file :profile_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "icons/profile.png"
  geocoded_by :current_sign_in_ip


  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/

  after_destroy :destroy_customer
  after_create :create_customer
  after_save :update_customer

  def twitter
    identities.where( :provider => "twitter" ).first
  end

  def twitter_client
    @twitter_client ||= Twitter.client( access_token: twitter.accesstoken )
  end

  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end

  def instagram
    identities.where( :provider => "instagram" ).first
  end

  def instagram_client
    @instagram_client ||= Instagram.client( access_token: instagram.accesstoken )
  end

  def google_oauth2
    identities.where( :provider => "google_oauth2" ).first
  end

  def google_oauth2_client
    if !@google_oauth2_client
      @google_oauth2_client = Google::APIClient.new(:application_name => 'HappySeed App', :application_version => "1.0.0" )
      @google_oauth2_client.authorization.update_token!({:access_token => google_oauth2.accesstoken, :refresh_token => google_oauth2.refreshtoken})
    end
    @google_oauth2_client
  end

  def update_from_identity(identity)
    identity.update_attribute( :user_id, self.id )
    self.phone= identity.phone
    self.first_name= identity.first_name
    self.last_name= identity.last_name
    self.profile_pic = URI.parse(identity.image)
    self.save
  end

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

  def customer
    customer_id && BraintreeRails::Customer.new(customer_id)
  end

  private
  def destroy_customer
    BraintreeRails::Customer.delete(customer_id) if customer_id.present?
  end

  def create_customer
    customer_info = attributes.symbolize_keys!.slice(:first_name, :last_name, :email, :company, :website, :phone, :fax)
    BraintreeRails::Customer.new(customer_info).save
  end

  def update_customer
    customer_info = attributes.symbolize_keys!.slice(:first_name, :last_name, :email, :company, :website, :phone, :fax)
    customer.update_attributes(customer_info)
  end

end
