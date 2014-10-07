class CreateProductDescriptionImages < ActiveRecord::Migration
  def change
    create_table :product_description_images do |t|
      t.references :product
      t.attachment :image

      t.timestamps
    end
  end
end
