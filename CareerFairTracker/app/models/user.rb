class User < ApplicationRecord

    attr_accessor :user_type, :username, :password
    
    def initialize(user_type = "", username = "", password = "")
        @user_type = user_type
        @username = username
        @password = password
    end

    def test_user_creation
        @user = User.new!()
        assert @user.username = ""
    end

    def test_save_user_to_db
        @user = User.create!("test", "test", "test")
        @candidateUser = User.where(:username = "test")
        assert @user.id == @candidateUser.id
    end

    # def _(username, password)
    #     @user = User.
        
    #     ("username = ? and password = ?", *[username, password])
    #     if @user 
    #         return true
    #     end
    #     return false
    # end

end
