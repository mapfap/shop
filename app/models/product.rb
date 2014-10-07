class Product < ActiveRecord::Base
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :guests
	has_many :product_description_images
	has_one :product_thumbnail
	belongs_to :wish_item
	belongs_to :order_item
end
