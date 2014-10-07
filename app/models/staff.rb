class Staff < ActiveRecord::Base
    belongs_to :position
    belongs_to :staff_action
    
end
