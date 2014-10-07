class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :token
      t.string :ipaddress
      t.timestamps
    end
  end
end
