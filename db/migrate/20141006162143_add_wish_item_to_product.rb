class AddWishItemToProduct < ActiveRecord::Migration
  def change
 	add_reference :products, :wish_item
  end
end
