Rails.application.routes.draw do

  get 'carts/show'

  get 'comments/new'

  get '/cart/checkout' => 'carts#checkout', as: 'checkout'
  get '/cart/complete' => 'carts#order_complete', as: 'complete'

  devise_for :users
  root to: "home#index"


  resources :products do
    resources :comments, except: [:index, :show]
  end

  resources :order_items

  resource :cart, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :charges
end
