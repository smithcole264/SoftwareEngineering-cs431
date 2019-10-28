class User < ApplicationRecord
    validates_presence_of :user_type, :username, :password

    #attr_accessor :user_type, :username, :password
    
    # def initialize(user_type, username, password)
    #     @user_type = user_type
    #     @username = username
    #     @password = password
    # end


    
    # def _(username, password)
    #     @user = User.
        
    #     ("username = ? and password = ?", *[username, password])
    #     if @user 
    #         return true
    #     end
    #     return false
    # end

end
