class Vendedor < ActiveRecord::Base
	has_many :vendas
	has_secure_password
end
