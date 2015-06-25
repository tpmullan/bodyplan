class TrainersController < ApplicationController
	
  def index
  end

  def show
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, 
                                 :password, :password_confirmation, :bio, 
                                 :profile_pic, :phone, :website, :sex, 
                                 :goal, :ideal_session, :ideal_body_type, 
                                 :fitness_level, :equipment_access
                                )
  end


end
