class AddOrderItemToProduct < ActiveRecord::Migration
  def change
 	add_reference :products, :order_item
  end
end
