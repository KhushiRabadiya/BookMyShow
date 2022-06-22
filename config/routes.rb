Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"   
  root "homes#index"
  resources :homes
  resources :users do
    resources :bookings do
      put 'confirm'
      put 'cancel'
    end 
  end
  resources :roles 
  resources :categories 
  resources :cities 
  resources :locations 
  resources :events 
  resources :notifications
  get "/bookings", to: "bookings#index", as: "bookings"
  get "/bookings/show", to: "bookings#show", as: "bookings_show"
end        
