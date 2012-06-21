class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :receita_medica
      t.references :farmacia

      t.timestamps
    end
  end
end
