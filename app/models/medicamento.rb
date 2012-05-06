class Medicamento < ActiveRecord::Base
	has_many :medicamento_receitas
	has_many :receita_medicas, :through => :medicamento_receita
end
