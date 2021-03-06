Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 namespace :api do
 	get 'device_informations/:qrcode' => 'device_informations#show_info'
 	get 'lab_rooms' => 'laboratories#index'
    get 'devices/:lab_room_id' => 'laboratories#get_device_by_labroom'
    get 'devices_left' => 'laboratories#get_number_of_device_left'
    get 'inventory_seasons' => 'inventory_seasons#index'
 	post 'inventories/room' => 'inventories#create_by_room'
 	post 'inventories/device' => 'inventories#create_by_device'
 	post 'inventories/latest_inventory_for_device' => 'inventories#check_latest_inventory_per_device'
 	post 'inventories/latest_inventory_for_room' => 'inventories#check_latest_inventory_per_room'
 end
 match '/qrcodes' => 'qrcodes#generate', via: [:get, :post]
 root 'homes#index'
 get    '/login',  to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'
 resources :inventories , only: [:index]
 resources :qrcodes , only: [:generate]
 get 'statistics/time/', to: 'statistics#show_by_time'
 get 'statistics/room/', to: 'statistics#show_by_room'
 get 'statistics/season/', to: 'statistics#show_by_inventory_season'
 match 'search(/:search)', :to => 'inventories#search', :as => :search, via: [:get, :post]
 resources :materials
 post '/material_confirm', to: 'materials#confirm'
 post '/material_message', to: 'materials#message'
 get 'user/materials', to: 'materials#index_user'
 get 'admin/materials', to: 'materials#index_admin'
 get 'material_details', to: 'materials#material_details'
 resources :inventory_seasons, only: [:destroy]
 match 'seasons', :to => 'inventory_seasons#season', via: [:get, :post]
 get 'download', to: 'statistics#download'
 get 'download_material', to: 'materials#download'
end
