Rails.application.routes.draw do

  get 'account/show'

  get 'carts/show'

  get 'comments/new'

  post '/cart/complete' => 'carts#order_complete', as: 'complete'

  devise_for :users
  root to: "home#index"

resources :favorites
  resources :products do
    resources :comments, except: [:index, :show]
  end

  resources :order_items

  resource :cart, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :charges

  resources :accounts, only: [:show]
end
