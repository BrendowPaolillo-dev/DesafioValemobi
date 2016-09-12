class AddColumnPrecoToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :preco, :float
  end
end
