class AddTipoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipo, :integer

  end
end
