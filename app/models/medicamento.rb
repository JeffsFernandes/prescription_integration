class Medicamento < ActiveRecord::Base
	has_many :item_receitas
	has_many :receita_medicas, :through => :item_receitas

	accepts_nested_attributes_for :item_receitas, :receita_medicas
end
