class CreateHistoricos < ActiveRecord::Migration
  def change
    create_table :historicos do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
