# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Medicamento.find_by_nome('Buscopan')
	Medicamento.create({nome: 'Buscopan'})
end

unless Medicamento.find_by_nome('Amoxilina')
	Medicamento.create({nome: 'Amoxilina'})
end

unless Medicamento.find_by_nome('Cefalexina')
	Medicamento.create({nome: 'Cefalexina'})
end

unless Medicamento.find_by_nome('Viagra')
	Medicamento.create({nome: 'Viagra'})
end

unless Medicamento.find_by_nome('Cabioten')
	Medicamento.create({nome: 'Cabioten'})
end

unless Medicamento.find_by_nome('Hipernolol')
	Medicamento.create({nome: 'Hipernolol'})
end

unless Medicamento.find_by_nome('Renopril')
	Medicamento.create({nome: 'Renopril'})
end

unless Medicamento.find_by_nome('Enalatec')
	Medicamento.create({nome: 'Enalatec'})
end

unless Medicamento.find_by_nome('Sanpronol')
	Medicamento.create({nome: 'Sanpronol'})
end

unless Medicamento.find_by_nome('Pressoflux')
	Medicamento.create({nome: 'Pressoflux'})
end

unless User.find_by_nome('Droga Raia')
	User.create({nome: 'Droga Raia', email: 'droga@raia.com'})
end

unless User.find_by_nome('Nemo Oliveira')
	User.create({nome: 'Nemo Oliveira', email: 'nemo@oliveira.com', :password => "123456", :tipo => 2})
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
