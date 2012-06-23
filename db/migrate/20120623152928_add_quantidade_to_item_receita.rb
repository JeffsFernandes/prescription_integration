class AddQuantidadeToItemReceita < ActiveRecord::Migration
  def change
    add_column :item_receita, :quantidade, :string
  end
end
