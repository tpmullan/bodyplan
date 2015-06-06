class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def instagram
    generic_callback( 'instagram' )
  end

  def facebook
    generic_callback( 'facebook' )
  end

  def twitter
    generic_callback( 'twitter' )
  end

  def google_oauth2
    generic_callback( 'google_oauth2' )
  end

  def generic_callback( provider )
    @identity = Identity.find_for_oauth env["omniauth.auth"]

    @user = @identity.user || current_user
    unless @user
      @user = User.find_by(email: @identity.email || "#{@identity.uid}@#{provider}.com" ) 

      # Uncomment the section below if you want users to be created if they don't exist
      if @user.nil?
        @user = User.new(first_name: @identity.first_name,
                         last_name: @identity.last_name,
                         email: @identity.email || "#{@identity.uid}@#{provider}.com",
                         password: Devise.friendly_token[0,20]
                        )
        @user.profile_pic = URI.parse(@identity.image)
        @user.skip_confirmation!
        @user.save!
      end
    else
      @user.update_from_identity(@identity)
    end
    

    if @user.persisted?
      @identity.update_attribute( :user_id, @user.id )
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => provider.capitalize
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
