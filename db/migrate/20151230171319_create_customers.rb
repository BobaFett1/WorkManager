class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :Number
      t.string :Name1
      t.string :Name2
      t.string :Street
      t.integer :HoNumber
      t.integer :ZipCode
      t.string :City
      t.string :Country

      t.timestamps null: false
    end
  end
end
