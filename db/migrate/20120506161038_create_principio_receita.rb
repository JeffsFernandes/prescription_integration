class CreatePrincipioReceita < ActiveRecord::Migration
  def change
    create_table :principio_receita do |t|
      t.integer :principio_ativo_id
      t.integer :receita_medica_id
      t.integer :quantidade

      t.timestamps
    end
  end
end
