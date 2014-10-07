class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.float :weight
      t.float :quantity
      t.float :width
      t.float :height
      t.float :depth
      t.float :percent_discount
      
      t.timestamps
    end
  end
end
