class CreateEmployees < ActiveRecord::Migration
  def change
    unless table_exists? :employees
    create_table :employees do |t|
      t.string :name

      t.timestamps
    end
    end
  end
end
