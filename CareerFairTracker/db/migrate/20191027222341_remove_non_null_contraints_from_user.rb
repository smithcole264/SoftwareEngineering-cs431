class RemoveNonNullContraintsFromUser < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :user_type, true
    change_column_null :users, :username, true
    change_column_null :users, :password, true
  end
end
