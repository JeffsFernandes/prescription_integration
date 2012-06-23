class AddDataNascimentoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :data_nascimento, :date

  end
end
