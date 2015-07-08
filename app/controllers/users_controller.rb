class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.create params[:user]
    flash[:alert] = "Welcome #{@user.username}"
    redirect_to root_path
  end 
end
