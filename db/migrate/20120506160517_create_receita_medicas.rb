class CreateReceitaMedicas < ActiveRecord::Migration
  def change
    create_table :receita_medicas do |t|
      t.integer :medico_id
      t.integer :paciente_id
      t.integer :historico_id
      t.integer :farmacia_id
      t.date :data_prescricao

      t.timestamps
    end
  end
end
