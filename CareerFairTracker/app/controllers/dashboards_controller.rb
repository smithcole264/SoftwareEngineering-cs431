class DashboardsController < ApplicationController
    def view_events
        @events = Event.all
        if session[:user_id] != nil
            @user = User.find(session[:user_id])
            @user_tag = @user[:username]
            @admin = Admin.find_by(user_id: @user.id)
            session[:user_id_for_their_type] = @admin.id
            @user_type = @user[:user_type]
            @welcome_message = "Welcome #{@user_tag}"
        else 
            redirect_to root_url, notice: "You need to be signed in to do that."
        end
    end
end
