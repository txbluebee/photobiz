Rails.application.routes.draw do

  get 'comments/new'

  devise_for :users
  root to: "home#index"


  resources :products do
    resources :comments, except: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
