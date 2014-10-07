class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name, :lastname
      t.references :position, :staff_action
      t.timestamps
    end
  end
end
