class ReceitaMedica < ActiveRecord::Base
	has_many :item_receitas
	has_many :medicamentos, :through => :item_receitas

	belongs_to :paciente, :class_name => 'User', :foreign_key =>'paciente_id', :conditions => "tipo = 1"
	belongs_to :medico, :class_name => 'User', :foreign_key =>'medico_id', :conditions => "tipo = 2"
	belongs_to :status

	accepts_nested_attributes_for :item_receitas

	def belongs_to_patient?(paciente_cpf)
		self.paciente.cpf == paciente_cpf
	end

	def pode_ser_vendida?
		self.status_id == Status.find_by_nome('Pendente').id || self.status_id == Status.find_by_nome('Uso continuo').id
	end
end