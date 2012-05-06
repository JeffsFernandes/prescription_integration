class PrincipioReceita < ActiveRecord::Base
	belongs_to :receita_medica
	belongs_to :principio_ativo
end
