class Medicamento < ActiveRecord::Base
	has_many :item_receitas
	has_many :receita_medicas, :through => :item_receita

	accepts_nested_attributes_for :item_receitas
end
