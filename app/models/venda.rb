class Venda < ActiveRecord::Base
	belongs_to :farmacia, :class_name => 'User', :foreign_key =>'farmacia_id', :conditions => "tipo = 3"

	def self.receitas_medicas(farmacia_id)
		receitas = []
		Venda.where(:farmacia_id => farmacia_id).to_a.each do |venda|
			receitas << ReceitaMedica.find(venda.receita_medica_id)
		end
		receitas
	end
end
