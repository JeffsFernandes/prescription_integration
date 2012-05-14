class ReceitaMedica < ActiveRecord::Base
	has_many :medicamento_receitas
	has_many :medicamentos, :through => :medicamento_receitas
end
