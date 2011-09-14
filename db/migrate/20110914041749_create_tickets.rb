class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :priority
      t.integer :priorities_mask
      t.string :state
      t.text :notes
      t.text :invoice_remarks
      t.string :technician
      t.date :date_needed
      t.time :time_needed
      t.boolean :waiting
      t.reference :vehicle

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
