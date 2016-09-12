class AddColumnQuantidadeToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :quantidade, :integer
  end
end
