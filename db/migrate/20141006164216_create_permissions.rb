class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
    	t.references :staff_action
	t.timestamps
    end
  end
end
