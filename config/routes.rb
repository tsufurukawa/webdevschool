Rails.application.routes.draw do
  get '/about', to: 'home#about', as: :about
end
