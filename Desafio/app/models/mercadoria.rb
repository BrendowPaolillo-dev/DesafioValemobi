class Mercadoria < ActiveRecord::Base
	
	def to_s
		nome
	end
end
