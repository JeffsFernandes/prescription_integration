class AddTelefoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :telefone, :string

  end
end
