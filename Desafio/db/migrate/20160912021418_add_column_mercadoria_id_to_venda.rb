class AddColumnMercadoriaIdToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :mercadoria_id, :integer
  end
end
