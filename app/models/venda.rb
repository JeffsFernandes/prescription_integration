class Venda < ActiveRecord::Base
	belongs_to :farmacia, :class_name => 'User', :foreign_key =>'farmacia_id', :conditions => "tipo = 3"
end
