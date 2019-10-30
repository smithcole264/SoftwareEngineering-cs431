class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_type, :username, :password)
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id 
        redirect_to dashboard_url
      else
        redirect_to root_url, notice: "User Could not be created."
      end   
  end

  def update
  end

  def destroy
  end
end
