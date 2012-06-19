class ReceitaMedica < ActiveRecord::Base
       has_many :item_receitas
       has_many :medicamentos, :through => :item_receitas

       belongs_to :paciente, :class_name => 'User', :foreign_key =>'paciente_id', :conditions => "tipo = 1"
       belongs_to :medico, :class_name => 'User', :foreign_key =>'medico_id', :conditions => "tipo = 2"
       belongs_to :status
       
       accepts_nested_attributes_for :item_receitas

       def self.show_for_farmacia(cpf, receita_id, current_user)
       		raise 'Operacao Invalida' if current_user.tipo != 3
       		receita = ReceitaMedica.find(receita_id)
       		return '' if receita.nil? or receita.paciente.cpf != cpf
       		receita
       end
end