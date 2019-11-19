class UsersController < ApplicationController

  def user_params
    params.permit(:user_type, :username, :password)
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
    if session[:user_id] != nil
      user = User.find(session[:user_id])
      @user_type = user.user_type
      @profile_name = "#{user.username}"
    end
  end
# feel like there could be some bug in create
  def create
    @user = User.new(user_params)
    if not @user.save!
      redirect_to root_url and return
    end
    session[:user_id] = @user.id
    destination = determine_reroute_path_for(@user)
    redirect_to destination and return
  end

  def determine_reroute_path_for(user)
    type = user[:user_type]
    if type == "Admin"
      chosen_path = {controller: 'admins', action: 'new'}
    elsif type == "Student"
      chosen_path = {controller: 'students', action: 'new'}
    elsif type == "Recruiter"
      chosen_path = {controller: 'recruiters', action: 'new'}
    end
  end

  def update
  end

  def destroy
  end
end
