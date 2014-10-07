class StaffAction < ActiveRecord::Base
	has_many :staffs
        has_one :permission
end
