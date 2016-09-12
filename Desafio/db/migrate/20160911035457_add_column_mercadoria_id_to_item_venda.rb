class AddColumnMercadoriaIdToItemVenda < ActiveRecord::Migration
  def change
    add_column :itens_venda, :mercadoria_id, :integer
  end
end
