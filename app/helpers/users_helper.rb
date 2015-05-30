module UsersHelper
  def avatar_url(user, size=48)
    default_url = image_url("icons/profile.png")
    if !user.is_a? User
      default_url
    elsif user.profile_pic.present?
      user.profile_pic_url
    else
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "https://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=#{CGI.escape(default_url)}"
    end
  end

end
