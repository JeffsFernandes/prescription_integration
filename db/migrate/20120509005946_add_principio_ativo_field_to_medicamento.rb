class AddPrincipioAtivoFieldToMedicamento < ActiveRecord::Migration
  def change
  	change_table :medicamentos do |t|
  		t.boolean :principio_ativo
  	end
  end
end
