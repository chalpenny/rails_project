Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :temp_pet_notes
  resources :pets
  resources :users
  resources :clients
  root "clients#index"

  resources :clients do
    resources :appointments, only: [:show, :index]
  end

  resources :appointments

end
