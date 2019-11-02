class RemoveNonNullConstraintsFromStudentsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :students, :first_name, true
    change_column_null :students, :last_name, true
  end
end
