class CreateItemReceita < ActiveRecord::Migration
  def change
    create_table :item_receita do |t|
	  t.references :receita_medica
	  t.references :medicamento
      t.timestamps
    end
  end
end
