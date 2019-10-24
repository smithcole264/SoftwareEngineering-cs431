class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :major
      t.string :expected_grad_month
      t.integer :expected_grad_year

      t.timestamps
    end
  end
end
