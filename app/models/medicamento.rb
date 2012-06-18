class Medicamento < ActiveRecord::Base
	has_many :item_receitas
	has_many :receita_medicas, :through => :item_receita
end