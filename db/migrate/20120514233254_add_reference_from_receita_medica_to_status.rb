class AddReferenceFromReceitaMedicaToStatus < ActiveRecord::Migration
  def change
  	change_table :receita_medicas do |t|
  		t.references :status
  	end
  end
end
