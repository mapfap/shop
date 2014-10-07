class CreateProductThumbnails < ActiveRecord::Migration
  def change
    create_table :product_thumbnails do |t|
      t.references :product
      t.attachment :image
      t.timestamps
    end
  end
end
