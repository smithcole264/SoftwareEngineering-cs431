class SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if not isAuthentic?(user)
      alert_email_or_password_invalid
      redirect_to root_url and return
    end
    session[:user_id] = user.id
    user_with_specific_type = find_connected_cbject(user)
    session[:user_id_for_their_type] = user_with_specific_type.id
    destination = determine_reroute_path_for(user)
    redirect_to destination and return
  end

  def find_connected_cbject(user)
    type = user[:user_type]
    if type == "Admin"
      candidate_connected_object = Admin.find_by user_id: user.id
    elsif type == "Recruiter"
      candidate_connected_object = Recruiter.find_by user_id: user.id
    elsif type == "Student"
      candidate_connected_object = Student.find_by user_id: user.id
    end
  end

  def determine_reroute_path_for(user)
    type = user[:user_type]
    if type == "Admin"
      chosen_path = {controller: 'admins', action: 'dashboard'}
    elsif type == "Student"
      chosen_path = {controller: 'students', action: 'dashboard'}
    elsif type == "Recruiter"
      chosen_path = {controller: 'recruiters', action: 'dashboard'}
    end
  end

  def isAuthentic?(user)
    user && user.authenticate(params[:password])
  end

  def alert_email_or_password_invalid
    flash.now[:alert] = "Email or password was invalid"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out."
  end
end
