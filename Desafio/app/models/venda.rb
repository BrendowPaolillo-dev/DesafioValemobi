class Venda < ActiveRecord::Base
	belongs_to :mercadoria
	belongs_to :vendedor

	def have_mercadoria_in_estoque?
		mercadoria.quantidade >= quantidade
	end
end
