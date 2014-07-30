Rails.application.routes.draw do
  root to: 'promotions#index'
  get '/about', to: 'home#about', as: :about
  resources :promotions, only: [:index, :show]
end