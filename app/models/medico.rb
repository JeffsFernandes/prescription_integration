class Medico < ActiveRecord::Base
	has_many :receita_medicas
end