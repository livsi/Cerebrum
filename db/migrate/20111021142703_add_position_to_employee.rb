class AddPositionToEmployee < ActiveRecord::Migration
  def change
    unless column_exists? :employees, :position
      add_column :employees, :position, :string
    end
  end
end
