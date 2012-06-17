class AdicionaCamposDePacienteEmUsuario < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.string   :nome
      t.string   :telefone
      t.string   :cpf
      t.date     :data_nascimento
      t.string   :sexo
    end
  end

  def down                    
      remove_column :users, :nome 
      remove_column :users, :telefone 
      remove_column :users, :cpf 
      remove_column :users, :data_nascimento
      remove_column :users, :sexo  
  end
end
