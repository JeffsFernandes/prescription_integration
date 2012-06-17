class AdicionaCamposDeMedicoEmUsuario < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.integer  :crm
    end
  end

  def down                    
      remove_column :users, :crm  
  end
end                     