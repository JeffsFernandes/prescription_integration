class UserBelongsToUserType < ActiveRecord::Migration
  def up
  	change_table :users do |t|
  		t.references :user_type, :null => false
  	end
  end

  def down
  	remove_column :users, :user_type
  end
end
