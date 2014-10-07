class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :house_no, :village_name, :moo, :road, :district, :postal_code
      t.references :city
      t.timestamps
    end
  end
end
