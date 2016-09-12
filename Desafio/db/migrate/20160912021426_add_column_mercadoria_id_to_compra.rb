class AddColumnMercadoriaIdToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :mercadoria_id, :integer
  end
end
