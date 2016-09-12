Rails.application.routes.draw do
  resources :mercadorias
    resources :compras
    resources :vendas

  root :to => "login#index"

  get "/login" => "login#index"
  post "/login" => "login#create"
  delete "/login" => "login#destroy"

  get "/comprar" => "comprar#index"
  post "/comprar" => "comprar#create"

  get "/vender" => "vender#index"
  post "/vender" => "vender#create"

  post "/item" => "vender#create"

end
