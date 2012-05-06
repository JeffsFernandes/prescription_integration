class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.integer :farmacia_id
      t.string :rua
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
