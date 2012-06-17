class AddFieldsPosologiaAndQuantidadeToItemReceitaTable < ActiveRecord::Migration
  def change
  	change_table :item_receita do |t|
  		t.string  :posologia
  	end
  end
end
