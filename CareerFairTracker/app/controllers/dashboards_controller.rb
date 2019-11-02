class DashboardsController < ApplicationController

    def index
        @events = Event.all
        if session[:user_id] != nil
            user = User.find(session[:user_id])
            @user_type = user.user_type
            @welcome_message = "Welcome #{user.username}"
        else 
            redirect_to root_url, notice: "You need to be signed in to do that."
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
