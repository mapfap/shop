class AddOrderItemToOrder < ActiveRecord::Migration
  def change
	add_reference :orders, :order_items
  end
end
