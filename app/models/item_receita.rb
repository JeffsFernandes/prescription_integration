class ItemReceita < ActiveRecord::Base
	belongs_to :medicamento
	belongs_to :receita_medica

	accepts_nested_attributes_for :medicamento

end