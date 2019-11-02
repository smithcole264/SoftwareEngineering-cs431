require 'rails_helper'

RSpec.describe User, type: :model do

  # subject { User.new(user_type: 'test_type', username: 'test_username', password_digest: 'test_password')}

  it 'test db connection by getting seeded user' do 
    user = {user_type: 'test_type', username: 'test_username', password_digest: 'test_password'}
    User.create!(user)
    candidate = User.last
    expect(candidate.attributes.key(:username)).to eq(user.key(:username))
  end

  it 'test User_Factory object creation' do
    adminHash = {user_type: 'Admin', username: 'test_username', password_digest: 'test_password'}
    admin = User.new(adminHash)
    newAdmin = UsersController.establish(admin)
    expect(newAdmin).to be_a(Admin)

    studentHash = {user_type: 'Student', username: 'test_username', password_digest: 'test_password'}
    student = User.new(studentHash)
    newStudent = UsersController.establish(student)
    expect(newStudent).to be_a(Student)
    
    recruiterHash = {user_type: 'Recruiter', username: 'test_username', password_digest: 'test_password'}
    recruiter = User.new(recruiterHash)
    newRecruiter = UsersController.establish(recruiter)
    expect(newRecruiter).to be_a(Recruiter)
  end

end


# RSpec.configure do |config|

#     # config.before(:suite) do
#     #   DatabaseCleaner.strategy = :transaction
#     #   DatabaseCleaner.clean_with(:truncation)
#     # end
  
#     # config.around(:each) do |example|
#     #   DatabaseCleaner.cleaning do
#     #     example.run
#     #   end
#     # end
  
#   end

