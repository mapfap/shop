class Order < ActiveRecord::Base
	has_many :order_items	

	before_save :quantity_update


	def quantity_update
		self.order_items.each do |order_item|
			puts 'Hello, World'
		end
	end
end
