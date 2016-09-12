class AddColumnQuantidadeToItemVenda < ActiveRecord::Migration
  def change
    add_column :itens_venda, :quantidade, :integer
  end
end
