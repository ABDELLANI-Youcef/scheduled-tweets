Rails.application.routes.draw do
  root to: 'main#index'
  delete "logout", to: 'sessions#destroy'
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get 'about-us', to: "about#index", as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
