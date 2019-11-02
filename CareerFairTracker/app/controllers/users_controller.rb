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

  def self.UserFactory(user)
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

  def create
      user = User.new(user_params)
      newUser = UsersController.UserFactory(user)
      # @user_type = @user[:user_type]
      # could be a good place for a factory method
      logger.debug "______________________"
      logger.debug user[:user_type]
      logger.debug user_params


      if user.save
        newUser.save
        logger.debug "____________________"
        # logger.debug newUser[:]
        logger.debug "____________________"
        session[:user_id] = user.id 
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
