class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.text :concern
      t.text :cause
      t.text :correction
      t.string :state
      t.integer :sorted
      t.text :notes
      t.reference :ticket

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
