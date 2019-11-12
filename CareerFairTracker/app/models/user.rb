class User < ApplicationRecord
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    validates_presence_of :user_type, :password_digest

    has_many :admins, dependent: :destroy
    # has_many :students, dependent: :destroy
    # has_many :recruiters, dependent: :destroy

    def self.factory(user)
        user_type = user[:user_type]
        if user_type == "Admin"
          newUser = Admin.new()
        elsif user_type == "Student"
          newUser = Student.new()
        elsif user_type == "Recruiter"
          newUser = Recruiter.new()
        end
    end

end
