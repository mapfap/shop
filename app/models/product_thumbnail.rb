class ProductThumbnail < ActiveRecord::Base
	belongs_to :product
	has_attached_file :image
	validates_attachment :image, :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png'] }
end
