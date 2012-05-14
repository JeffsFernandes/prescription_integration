class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
