class CreateItensCompra < ActiveRecord::Migration
  def change
    create_table :itens_compra do |t|
      
      t.integer :compra_id
      t.integer :mercadoria_id

      t.timestamps null: false
    
    end
  end
end
