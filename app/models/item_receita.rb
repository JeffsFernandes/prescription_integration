class ItemReceita < ActiveRecord::Base
	belongs_to :medicamento
	belongs_to :receita_medica
end