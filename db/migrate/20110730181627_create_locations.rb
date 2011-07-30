class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.text :location_address
      t.string :location_name
      t.text :location_phone
      t.text :location_hours

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
