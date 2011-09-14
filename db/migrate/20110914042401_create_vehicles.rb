class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.integer :vin
      t.string :make
      t.string :model
      t.date :year
      t.string :plate
      t.string :color
      t.text :notes
      t.integer :cardinal_owner

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
