class ReceitaMedica < ActiveRecord::Base
	has_many :item_receitas
	has_many :medicamentos, :through => :item_receita
end
