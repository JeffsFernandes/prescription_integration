class AddTipoToUser < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.integer :tipo, :default => 1
    end
  end
  
  def down
    remove_column :users, :tipo
  end
end
