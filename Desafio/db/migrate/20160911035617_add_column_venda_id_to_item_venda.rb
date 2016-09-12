class AddColumnVendaIdToItemVenda < ActiveRecord::Migration
  def change
    add_column :itens_venda, :venda_id, :integer
  end
end
