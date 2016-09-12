class AddColumnVendedorIdToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :vendedor_id, :integer
  end
end
