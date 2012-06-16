class ReceitaMedica < ActiveRecord::Base
	has_many :item_receitas
	has_many :medicamentos, :through => :item_receita
	belongs_to :paciente
	belongs_to :medico
end