class PosologiaToString < ActiveRecord::Migration
  def up
  	remove_column :item_receita, :posologia
  	change_table :item_receita do |t|
  		t.string :posologia
  	end
  end

  def down
  	remove_column :item_receita, :posologia
  	change_table :item_receita do |t|
  		t.integer :posologia
  	end
  end
end
