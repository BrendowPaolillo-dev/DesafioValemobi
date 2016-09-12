class CreateVendedores < ActiveRecord::Migration
  def change
    create_table :vendedores do |t|
      t.string :nome
      t.string :login
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
