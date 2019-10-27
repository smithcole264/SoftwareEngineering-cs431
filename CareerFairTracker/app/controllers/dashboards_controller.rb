class DashboardsController < ApplicationController
    # def dashboard_params
    #     params.require(:login).permit(:user_type, :username, :password)
    # end

    def index

        # if they login its okay do someting
        # if they dont login, reroute them to login page
            # TODO: add error message if they dont login correctly
        if params[:bypass]
            @isValidUser = true
            @login_message = "Bypassed login, Welcome"
        else
            @username = params[:login][:username]
            @password = params[:login][:password]

            @isValidUser = verifyUsernameAndPassword(@username, @password)
            if @isValidUser
                @login_message = "Welcome #{@username}"
            else
                @login_failed = true
                redirect_to controller: :logins, action: :index, loginFailed: :true
            end
        end
        # if params[:login].has_key?(:username)
        #     @username = params[:login][:username]
        # else 
        #     @username = "deafult"
        # end
    end

    def verifyUsernameAndPassword(username, password)
        @USERNAME = "teamMember"
        @PASSWORD = "password"
        return (username == @USERNAME && password == @PASSWORD)
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
