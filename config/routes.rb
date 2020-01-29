Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
  resources :users

  resources :pets do
    resources :notes, module: :pets
  end

  resources :appointments do
    resources :notes, module: :appointments
  end

  resources :clients do
    resources :appointments
    resources :pets 
    resources :notes, module: :clients
  end

  root "clients#index"

end
