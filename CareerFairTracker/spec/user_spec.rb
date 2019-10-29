require 'rails_helper'

RSpec.describe User, type: :model do

  subject { User.new(user_type: 'test_type', username: 'test_username', password_digest: 'test_password')}

  it 'test db connection by getting seeded user' do 
    User.create!(subject)
    candidate = User.last
    expect(candidate.attributes.key(:username)).to eq(subject.key(:username))
  end

  it 'test that password is being stored correctly' do
    User.create!(subject)
    candidate = User.last 
    expect(candidate.attributes.key(:password_digest)).not_to eq(subject.key(:password_digest))
  end

  # it 'create and save user and test retrieve' do 
  #   User.create!({:user_type => "test_type", :username => "test_username", :password => "test_password"})
  #   # candidateUser = User.where("user_type = 'test_type'")
  #   candidateUser = User.first(:conditions => "user_type = 'test_type'")
  #   expect(candidateUser.user_type).to eq('test_type')
  # end
  # it 'instantiates user with all arguments' do
  #   # user = User.new(user_type: 'test_type', username: 'test_name', password: 'test_password').save
  #   expect(subject).to be_an_instance_of(User)
  # end

  # it 'create new user, should respond to `get_user_type`' do 
  #   user = User.create 
  #   expect(user).to respond_to :user_type 
  # end

  # it 'create new user, should respond to `get_username`' do 
  #   user = User.create 
  #   expect(user).to respond_to :username 
  # end

  # it 'create new user, should respond to `get_password`' do 
  #   user = User.create 
  #   expect(user).to respond_to :password 
  # end

  # it 'create user with attributes and read those values' do
  #   user = User.new(user_type: 'test_type', username: 'test', password: 'test').save
  #   expect(user.user_type).to eq('test_type')
  # end

  


  # describe 'create_and_save_user' do
  #   it 'should_be_created_and_retrieved_from_db' do 
  #     user = User.new() 
  #     User.create!(user)
  #     candidateUser = User.take
  #     expect(candidateUser.username).to be ""
  #   end
  # end

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

