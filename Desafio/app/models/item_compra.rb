class ItemCompra < ActiveRecord::Base
	belongs_to :mercadoria
	belongs_to :compra
end
