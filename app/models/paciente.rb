class Paciente_OLD < ActiveRecord::Base    
  has_many :receita_medicas
end
