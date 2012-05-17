class UserType < ActiveRecord::Base
	has_many :user_type_joins
	has_many :users, :through => :user_type_joins
end
