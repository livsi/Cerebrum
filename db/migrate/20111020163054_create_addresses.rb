class CreateAddresses < ActiveRecord::Migration
  def change
    unless table_exists? :addresses
      create_table :addresses do |t|
        t.string :full
        t.integer :owner_id
        t.string :owner_type
        t.timestamps
      end
    end
  end
end
