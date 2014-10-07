require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  
  def test_create_order_item
  	order_item = OrderItem.new
  	order_item.product = Product.new
  	order_item.order = Order.new
  	order_item.quantity = 5

    # test order item is created correctly with references
    assert order_item.save!
  end

end
