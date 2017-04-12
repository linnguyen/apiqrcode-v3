Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 namespace :api do
 	get 'users' => 'users#index'
 end
 root 'inventories#index'
 # resources :inventories , only: [:index]
 resources :qrcodes
end
