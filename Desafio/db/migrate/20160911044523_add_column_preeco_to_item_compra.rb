class AddColumnPreecoToItemCompra < ActiveRecord::Migration
  def change
    add_column :itens_compra, :preco, :float
  end
end
