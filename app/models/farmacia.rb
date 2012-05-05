class Farmacia < ActiveRecord::Base
	has_one :endereco
	accepts_nested_attributes_for :endereco
end
