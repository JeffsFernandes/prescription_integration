class ItemReceita < ActiveRecord::Base
	belongs_to :medicamento
	belongs_to :receita
end