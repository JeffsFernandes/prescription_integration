class PrincipioAtivo < ActiveRecord::Base
	has_many :principio_receitas
	has_many :receita_medicas, :through => :principio_receita
end
