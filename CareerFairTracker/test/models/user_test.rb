require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'class is working' do
    assert true
  end

  # test saveAndRetrieveUser do
    
  #   # @user = User.new
  #   # assert_not @user.save
  #   assert true
  # end

  # def test_user_creation
  #   @user = User.new!()
  #   assert @user.username = ""
  # end

  # def test_save_user_to_db
  #   require 'database_cleaner/active_record'
  #   DatabaseCleaner.strategy = :transaction
  #   DatabaseCleaner.start
  #   @user = User.create!("test", "test", "test")
  #   @candidateUser = User.where(:username = "test")
  #   assert @user.id == @candidateUser.id
  #   DatabaseCleaner.clean
  # end
end
