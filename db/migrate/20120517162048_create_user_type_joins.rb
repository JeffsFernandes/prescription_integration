class CreateUserTypeJoins < ActiveRecord::Migration
  def change
    create_table :user_type_joins do |t|
      t.integer :user_id
      t.integer :user_type_id

      t.timestamps
    end
  end
end
