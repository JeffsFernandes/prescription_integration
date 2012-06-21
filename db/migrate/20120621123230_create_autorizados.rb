class CreateAutorizados < ActiveRecord::Migration
  def change
    create_table :autorizados do |t|
      t.string :cpf

      t.timestamps
    end
  end
end
