class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status, :shipping_type, :payment_type
      t.float :total_price, :percent_discount
      t.timestamps
    end
  end
end
