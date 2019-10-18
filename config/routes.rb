Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'users/search'
  get 'users/myproducts'
  
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
