class ItemVenda < ActiveRecord::Base
	belongs_to :mercadoria
	belongs_to :venda
end
