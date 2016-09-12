class AddColumnPrecoToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :preco, :float
  end
end
