class AddColumnSaldoToVendedor < ActiveRecord::Migration
  def change
    add_column :vendedores, :saldo, :float, :default => "10000.0"
  end
end
