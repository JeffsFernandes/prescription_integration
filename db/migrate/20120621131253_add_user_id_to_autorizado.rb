class AddUserIdToAutorizado < ActiveRecord::Migration
  def change
    add_column :autorizados, :user_id, :integer

  end
end
