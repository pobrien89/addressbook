class CreateAddressbooks < ActiveRecord::Migration
  def self.up
    create_table :addressbooks do |t|
      t.string :FirstName
      t.string :LastName
      t.string :AddressLine1
      t.string :AddressLine2
      t.string :AddrssLine3
      t.string :Phone
      t.text :Description

      t.timestamps
    end
  end

  def self.down
    drop_table :addressbooks
  end
end
