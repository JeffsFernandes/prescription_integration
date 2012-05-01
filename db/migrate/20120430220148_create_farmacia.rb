class CreateFarmacia < ActiveRecord::Migration
  def change
    create_table :farmacia do |t|
      t.string :nome
      t.integer :id_cep

      t.timestamps
    end
  end
end
