Rails.application.routes.draw do
  get '/about', to: 'home#about', as: :about
  resources :promotions, only: [:index, :show]
end
