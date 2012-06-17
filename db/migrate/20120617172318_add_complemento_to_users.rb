class AddComplementoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :complemento, :string

  end
end
