Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #resources :clients
  #resources :pets, only: [:new, :create, :update, :show]
  
  resources :users
  resources :appointments

  resources :clients do
    resources :appointments, only: [:show, :index]
    resources :pets 
  end

  root "clients#index"

end
