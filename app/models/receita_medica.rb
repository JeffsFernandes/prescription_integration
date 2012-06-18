class ReceitaMedica < ActiveRecord::Base
	has_many :item_receitas
	has_many :medicamentos, :through => :item_receitas
	
	belongs_to :paciente, :class_name => 'User', :foreign_key => 'paciente_id', :conditions => "tipo = 1"
	belongs_to :medico, :class_name => 'User', :foreign_key => 'medico_id', :conditions => "tipo = 2"

	accepts_nested_attributes_for :item_receitas, :medicamentos
end