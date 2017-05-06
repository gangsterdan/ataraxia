class PropertiesController < ApplicationController
  def index
	@property = Property.all
  end

  def new
    if session[:current_user_id] == nil
      redirect_to users_login_path
    else
      @property = Property.new
      @user = User.find(session[:current_user_id]) #Conseguir el user.
    end
  end

  def create
	
	@property=Property.new(params[:properties].permit(:name,:address,:description,:price,:available,:lesee,:distance,:elevator,:ground_floor,:pets_allowed,:furnished,:cleaning_service,:female_roomies,:male_roomies,:gym,:smoking_is_allowed,:user_id))
	@property.save
	redirect_to properties_path
  end

  def destroy
  end

  def information
  	@property=Property.find(params[:id])
  end
end
