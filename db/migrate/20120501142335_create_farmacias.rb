class CreateFarmacias < ActiveRecord::Migration
  def change
    create_table :farmacias do |t|
      t.string :nome
      t.integer :endereco_id

      t.timestamps
    end
  end
end
