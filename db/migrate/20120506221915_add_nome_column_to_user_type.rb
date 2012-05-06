class AddNomeColumnToUserType < ActiveRecord::Migration
  def change
  	change_table :user_types do |t|
  		t.string :name, :limit => 30
  	end
  end
end
