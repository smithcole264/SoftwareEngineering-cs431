class DashboardsController < ApplicationController
    # def dashboard_params
    #     params.require(:login).permit(:user_type, :username, :password)
    # end

    def index
        if params.has_key?(:user_type) && params.has_key?(:username) && params.has_key?(:password)
            User.create!({user_type: params[:user_type], username: params[:username], password: params[:password]})
            
        end
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
