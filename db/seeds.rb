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

unless User.find_by_nome('Droga Raia')
	User.create({nome: 'Droga Raia', email: 'droga@raia.com'})
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

unless Status.find_by_nome('Pendente')
	Status.create({nome: 'Pendente'})
end

unless Status.find_by_nome('Finalizado')
	Status.create({nome: 'Finalizado'})
end

unless Status.find_by_nome('Uso continuo')
	Status.create({nome: 'Uso continuo'})
end

unless Status.find_by_nome('Excluido')
	Status.create({nome: 'Excluido'})
end
