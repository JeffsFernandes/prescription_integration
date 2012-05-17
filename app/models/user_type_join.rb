class UserTypeJoin < ActiveRecord::Base
	belongs_to :user
	belongs_to :user_type
end
