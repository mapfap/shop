class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.references :product
      t.float :quantity
      t.float :total_cost
      t.timestamps
    end
  end
end
