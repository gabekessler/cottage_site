class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :title
      t.text :service_text

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
