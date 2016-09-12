class Compra < ActiveRecord::Base
	belongs_to :mercadoria
	belongs_to :vendedor
end
