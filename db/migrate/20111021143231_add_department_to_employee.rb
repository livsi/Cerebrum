class AddDepartmentToEmployee < ActiveRecord::Migration
  def change
    unless column_exists? :employees, :department_id
      add_column :employees, :department_id, :integer
    end
  end
end
