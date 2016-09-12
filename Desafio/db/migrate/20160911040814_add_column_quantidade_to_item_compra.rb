class AddColumnQuantidadeToItemCompra < ActiveRecord::Migration
  def change
    add_column :itens_compra, :quantidade, :integer
  end
end
