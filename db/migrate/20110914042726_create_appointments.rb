class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.string :state
      t.datetime :expected_time
      t.datetime :arrived_time
      t.text :notes
      t.references :vehicle

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
