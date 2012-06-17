class AddBairroToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bairro, :string

  end
end
