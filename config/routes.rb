Rails.application.routes.draw do
  get 'rooms/index'
  get 'rooms/new'
  get 'rooms/create'
  get 'rooms/listing'
  get 'rooms/pricing'
  get 'rooms/description'
  get 'rooms/photo_upload'
  get 'rooms/amenities'
  get 'rooms/location'
  get 'rooms/update'
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :rooms, except: [:edit] do
    member do
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'location'
    end
  end
end
