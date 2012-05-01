class Farmacia < ActiveRecord::Base
	has_one :enderecos
	accepts_nested_attributes_for :enderecos
end
