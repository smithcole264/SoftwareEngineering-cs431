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
    if session[:user_id] != nil
      user = User.find(session[:user_id])
      @user_type = user.user_type
      @profile_name = "#{user.username}"
    end
  end

  def create
    @user = User.new(user_params)
    if not @user.save
      redirect_to root_url, notice: get_user_creation_error()
    end
    session[:user_id] = @user.id
    destination = determine_reroute_path_for(@user)
    redirect_to destination and return
  end

  def get_user_creation_error
    return "User Could not be created."
  end

  def determine_reroute_path_for(user)
    type = user[:user_type]
    if type == "Admin"
      chosen_path = {controller: 'admins', action: 'new', user: user}
    elsif type == "Student"
      chosen_path = new_student_path
    elsif type == "Recruiter"
      chosen_path = new_recruiter_path
    end
  end

  def update
  end

  def destroy
  end
end