class DashboardsController < ApplicationController
    # def dashboard_params
    #     params.require(:login).permit(:user_type, :username, :password)
    # end

    # def index 
    #     @login_message = "Login"
    # end

    # def loginAttemptSucceeds(username, password)
    #     if User.isVerified(username, password)
    #         return true
    #     end
    #     return false
    # end

    def index
        @login_message = ""
        if params[:bypass]
            @_username = 'teamMember'
            @_password = 'password'
        else 
            @_username = params[:login][:username]
            @_password = params[:login][:password]
        end

        # if loginAttemptSucceeds(@_username, @_password) 
        if User.isVerified(@_username, @_password)
            @login_message = "User #{@_username} logged in."
        end

        # if params[:bypass]
        #     @isValidUser = true
        #     @login_message = "Bypassed login, Welcome"
        # else
        #     @username = params[:login][:username]
        #     @password = params[:login][:password]

        #     @isValidUser = verifyUsernameAndPassword(@username, @password)
        #     if @isValidUser
        #         @login_message = "Welcome #{@username}"
        #     else
        #         @login_error_message = "Login Failed"
        #         redirect_to controller: :logins, action: :index, login_error_message: @login_error_message
        #     end
        # end
    end

    def show
    end

    def new
    end

    def edit 
    end

    def create 
    end

    def update
    end

    def destroy
    end
end
