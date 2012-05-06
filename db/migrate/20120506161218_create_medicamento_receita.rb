class CreateMedicamentoReceita < ActiveRecord::Migration
  def change
    create_table :medicamento_receita do |t|
      t.integer :medicamento_id
      t.integer :receita_medica_id
      t.float :quantidade
      t.string :posologia

      t.timestamps
    end
  end
end
