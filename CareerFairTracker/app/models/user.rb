class User < ApplicationRecord
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    validates_presence_of :user_type, :password_digest
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
