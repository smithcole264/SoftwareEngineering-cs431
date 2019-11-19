class Recruiter < ApplicationRecord
  belongs_to :user, optional: true
  # has_secure_password

  # validates :email, presence: true, uniqueness: true
  # validates_presence_of :password_digest, :first_name, :last_name, :company_name
  
end
