json.extract! mercadoria, :id, :tipo, :nome, :quantidade, :preco, :created_at, :updated_at
json.url mercadoria_url(mercadoria, format: :json)