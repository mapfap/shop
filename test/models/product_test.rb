require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  def test_create_product
  	product = Product.new
  	product.name = "Red Tent"
    product.price = 10
    product.description = "Very Comfortable"
    product.weight = 40
    product.quantity = 0
    product.width = 20
    product.height = 20
    product.depth = 20

    # test product is created correctly
    assert product.save!
  end

  def test_update_product
  	product = Product.new 
  	product.name = "Red Tent"
  	product.save!

  	product = Product.where(name: "Red Tent").first
  	product.name = "Blue Tent"

  	# test product is updated correctly
  	assert Product.update(product.id,price: 15)
  end

  def test_destroy_product
  	product = Product.new 
  	product.name = "Red Tent"
  	product.save!

  	product = Product.where(name: "Red Tent").first

  	# test product is destroyed correctly
  	assert Product.destroy(product.id)
  end

  def test_add_categories_to_product
  	product = Product.new 
  	product.name = "Red Tent"

  	category = Category.new
  	category.name = "Tent"
  	 
  	product.categories << category
  	product.save!

  	product = Product.where(name: "Red Tent").first

  	assert_kind_of Category , product.categories.first
  end

  def test_add_tag_to_product
    product = Product.new 
    product.name = "Red Tent"

    tag = Tag.new
    tag.name = "Red Color"
     
    product.tags << tag
    product.save!

    product = Product.where(name: "Red Tent").first

    assert_kind_of Tag , product.tags.first
    assert_match "Red Color" , product.tags.first.name
  end

  # def test_add_big_data_of_product
  # 	start_time = Time.now
  # 	10000.times { Product.create!(name: "Red Tent").save! }
  # 	stop_time = Time.now

  # 	elapse = stop_time - start_time

  # 	assert_operator elapse, :<=, 20
  # end

end
