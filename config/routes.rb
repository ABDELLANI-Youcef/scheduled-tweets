Rails.application.routes.draw do
  get 'registrations/new'
  get 'registrations/create'
  root to: 'main#index'
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get 'about-us', to: "about#index", as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
