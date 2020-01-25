Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
  resources :users
  resources :appointments

  resources :clients do
    resources :appointments
    resources :pets 
  end

  root "clients#index"

end
