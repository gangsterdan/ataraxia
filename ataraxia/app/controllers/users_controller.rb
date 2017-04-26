class UsersController < ApplicationController
  def index
	@user = User.all
  end

  def new
	@user = User.new
  end

  def create
	@user=User.new(params[:user].permit(:name,:gender,:age,:email,:password,:phone))
	@user.save
	redirect_to users_path
  end

  def destroy
  end
end
