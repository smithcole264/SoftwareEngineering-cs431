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
    adminUserHash = {user_type: 'Admin', username: 'test_username', password_digest: 'test_password'}
    # studentUser = {user_type: 'Student', username: 'test_username', password_digest: 'test_password'}
    # recruiterUser = {user_type: 'Recruiter', username: 'test_username', password_digest: 'test_password'}
    # newAdminUser = UsersController.UserFactory(adminUser)
    # newStudentUser = UsersController.UserFactory(studentUser)
    # newRecruiterUser = UsersController.UserFactory(recruiterUser)

    adminUser = User.new(adminUserHash)
    newAdminUser = UsersController.UserFactory(adminUser)
    expect(newAdminUser).to be_a(Admin)
    # expect(newStudentUser).to be_a(Student)
    # expect(newRecruiterUser).to be_a(Recruiter)
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

