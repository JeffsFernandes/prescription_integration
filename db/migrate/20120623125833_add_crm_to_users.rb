class AddCrmToUsers < ActiveRecord::Migration
  def change
    add_column :users, :crm, :string

  end
end
