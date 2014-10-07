require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # def test_create_order
  # 	order = Order.new
  # 	order.order_items << OrderItem.new
  # 	order.order_items.first.product = Product.new
  # 	order.order_items.first.quantity = 5

  # 	# test order is created correctly with references
  #   assert order.save!
  # end

  # def test_transaction_save
  #   product = Product.new
  #   product.name = "Red Tent"
  #   product.quantity = 10
  #   product.price = 5

  #   assert_not_nil product

  #   order_item = OrderItem.new
  #   order_item.product = product
  #   order_item.quantity = 5

  #   assert_not_nil order_item
  #   assert_not_nil order_item.product

  #   order = Order.new
  #   order.order_items << order_item

  #   assert_not_nil order
  #   assert_not_nil order_item

  #   assert_equal product.quantity , order.order_items.first.quantity
  # end

  def test_transaction_flows
    product = Product.new
    product.name = "Red Tent"
    product.quantity = 10
    product.price = 5

    assert_not_nil product

    product.save

    assert_not_nil Product.all , "Can't get product from database"

    order_item = OrderItem.new
    order_item.product = Product.all.last
    order_item.quantity = 5

    assert_not_nil order_item
    assert_not_nil order_item.product

    order = Order.new
    order.order_items << order_item
    order.order_items.last.quantity = 5

    assert_not_nil order
    assert_not_nil order_item

    assert order.save
    assert order_item.save

    order = Order.all
    product = Product.all

    assert_not_nil product
    assert_not_nil order

    assert_equal product.last.quantity , order.last.order_items.last.quantity
  end
end
