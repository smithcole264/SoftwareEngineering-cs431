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
    log_type_and_params
      
    if @user.save!
      @newUser = self.establish(@user)
      @newUser.save!
      session[:user_id] = @newUser.id 
      redirect_to dashboard_url
    else
      redirect_to root_url, notice: get_user_creation_error
    end   
  end

  def establish(user)
    newUser = ''
    user_type = user[:user_type]
    if user_type == "Admin"
      newUser = Admin.new()
    elsif user_type == "Student"
      newUser = Student.new()
    elsif user_type == "Recruiter"
      newUser = Recruiter.new()
    end
    return newUser
  end

  def log_type_and_params
    logger.debug "______________________"
    logger.debug @user[:user_type]
    logger.debug user_params
  end

  def get_user_creation_error
    return "User Could not be created."
  end

  def update
  end

  def destroy
  end
end
