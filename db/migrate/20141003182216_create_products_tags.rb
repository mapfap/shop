class CreateProductsTags < ActiveRecord::Migration
  def change
    create_table :products_tags , :id => false do |t|
      t.integer :tag_id
      t.integer :product_id
    end
  end
end
