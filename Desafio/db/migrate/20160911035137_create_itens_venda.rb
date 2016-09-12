class CreateItensVenda < ActiveRecord::Migration
  def change
    create_table :itens_venda do |t|

      t.timestamps null: false
    end
  end
end
