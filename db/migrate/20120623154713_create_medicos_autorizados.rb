class CreateMedicosAutorizados < ActiveRecord::Migration
  def change
    create_table :medicos_autorizados do |t|
      t.integer :user_id
      t.integer :medico_id

      t.timestamps
    end
  end
end
