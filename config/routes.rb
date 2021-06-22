Rails.application.routes.draw do
  root to: 'main#index'
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: 'sessions#destroy'
  
  get 'about-us', to: "about#index", as: :about
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get 'password/reset', to: "password_resets#new"
  post 'password/reset', to: "password_resets#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
