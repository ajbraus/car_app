class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :street_line_1
      t.string :street_line_2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :cell_phone
      t.integer :home_phone
      t.integer :work_phone
      t.text :notes
      t.boolean :recieve_text
      t.boolean :recieve_email

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
