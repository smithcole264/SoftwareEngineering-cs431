class SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if isAuthentic?(user)
      session[:user_id] = user.id
      redirect_to dashboard_url and return
    else 
      alert_email_or_password_invalid
      redirect_to root_url and return
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
