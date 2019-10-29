class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        puts "inside current user method"
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end
end
