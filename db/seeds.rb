# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Medicamento.find_by_nome('medicamento_1')
	Medicamento.create({nome: 'medicamento_1'})
end

unless PrincipioAtivo.find_by_nome('principio ativo 1')
	PrincipioAtivo.create({nome: 'principio ativo 1'})
end

unless Farmacia.find_by_nome('Droga Raia')
	Farmacia.create({nome: 'Droga Raia'})
end

unless Historico.find_by_nome('Pendente')
	Historico.create({nome: 'Pendente'})
end

unless Historico.find_by_nome('Finalizado')
	Historico.create({nome: 'Finalizado'})
end

unless Historico.find_by_nome('Uso continuo')
	Historico.create({nome: 'Uso continuo'})
end

unless Historico.find_by_nome('Excluido')
	Historico.create({nome: 'Excluido'})
end

["Paciente", "Medico", "Farmacia"].each do |user_type|
  UserType.find_or_create_by_name(user_type)
end
