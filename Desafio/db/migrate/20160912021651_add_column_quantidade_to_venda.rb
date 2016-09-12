class AddColumnQuantidadeToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :quantidade, :integer
  end
end
