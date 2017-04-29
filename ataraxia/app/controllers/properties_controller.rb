class PropertiesController < ApplicationController
  def index
	@property = Property.all
  end

  def new
	@property = Property.new
  end

  def create
	@property=Property.new(params[:property].permit(:name,:addres,:description,:price,:avialable,:user_id,:lesee,:created_at,:updated_at,:elevator,:ground_floor,:pets_allowed,:furnished,:cleaning_service,:female_roomies,:male_roomies,:gym,:smoking_is_allowed))
	@property.save
	redirect_to properties_path
  end

  def destroy
  end
end
