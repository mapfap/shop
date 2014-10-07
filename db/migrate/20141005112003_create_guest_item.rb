class CreateGuestItem < ActiveRecord::Migration
  def change
    create_table :guests_products do |t|
    	t.integer :product_id
        t.integer :guest_id
    end
  end
end
