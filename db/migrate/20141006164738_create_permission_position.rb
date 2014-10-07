class CreatePermissionPosition < ActiveRecord::Migration
  def change
    create_table :permissions_positions do |t|
   	 t.integer :position_id, :permission_id
    end
  end
end
