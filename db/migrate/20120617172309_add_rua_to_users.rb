class AddRuaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rua, :string

  end
end
