Rails.application.routes.draw do
  resources :categories do
    resources :products, only: [:create, :destroy]
  end
  # se hace este ciclo para decir que dentro de las rutas de categoria, acepta la de prducts pero solo para create
    #resources :categories resume todas las rutas rest de category
  root 'categories#index'

end
