class CreateWishItems < ActiveRecord::Migration
  def change
    create_table :wish_items do |t|
      t.references :product
      t.float :quantity
      t.timestamps
    end
  end
end
