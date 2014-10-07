class CreateStaffActions < ActiveRecord::Migration
  def change
    create_table :staff_actions do |t|
      t.references :permission, :staff   
      t.string :details
	t.timestamps
    end
  end
end
