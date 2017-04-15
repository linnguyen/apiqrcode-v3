Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 namespace :api do
 	get 'device_informations/:qrcode' => 'device_informations#show_info'
 	get 'lab_rooms' => 'laboratories#index'
    get 'devices/:lab_room_id' => 'laboratories#get_device_by_labroom'
 	post 'inventories' => 'inventories#create'
 end
 match '/qrcodes' => 'qrcodes#generate', via: [:get, :post]
 root 'homes#index'
 resources :inventories , only: [:index]
 resources :qrcodes , only: [:generate]
end
