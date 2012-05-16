class AddFieldsPosologiaAndQuantidadeToItemReceitaTable < ActiveRecord::Migration
  def change
  	change_table :item_receita do |t|
  		t.integer :posologia
  		t.integer :quantidade
  	end
  end
end
