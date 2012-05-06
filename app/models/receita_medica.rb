class ReceitaMedica < ActiveRecord::Base
	has_many :medicamento_receita
	has_many :medicamentos, :through => :medicamento_receita

	has_many :principio_receita
	has_many :principio_ativos, :through => :principio_receita
end
