class AddColumnPrecoToItemVenda < ActiveRecord::Migration
  def change
    add_column :itens_venda, :preco, :float
  end
end
