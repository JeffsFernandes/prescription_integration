class MedicosAutorizado < ActiveRecord::Base
	belongs_to :user
	belongs_to :medico, :class_name => "User"
end
