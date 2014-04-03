class CreateDepartments < ActiveRecord::Migration
  def change
    unless table_exists? :departments
      create_table :departments do |t|
        t.string :name

        t.timestamps
      end
    end
  end
end
