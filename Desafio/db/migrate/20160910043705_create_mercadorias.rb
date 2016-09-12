class CreateMercadorias < ActiveRecord::Migration
  def change
    create_table :mercadorias do |t|
      t.string :tipo
      t.string :nome
      t.integer :quantidade
      t.float :preco

      t.timestamps null: false
    end
  end
end
