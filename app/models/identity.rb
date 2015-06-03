class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    identity = find_by(provider: auth.provider, uid: auth.uid)
    identity = create(uid: auth.uid, provider: auth.provider) if identity.nil?
    identity.update( accesstoken: auth.credentials.token,
                     refreshtoken: auth.credentials.refresh_token,
                     name: auth.info.name,
                     first_name: auth.info.first_name,
                     last_name: auth.info.last_name,
                     email: auth.info.email,
                     nickname: auth.info.nickname,
                     image: auth.info.image,
                     phone: auth.info.phone,
                     urls: (auth.info.urls || "").to_json
                   )
    identity
  end
end
