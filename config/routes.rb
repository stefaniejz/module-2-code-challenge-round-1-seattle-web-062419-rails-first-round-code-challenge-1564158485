Rails.application.routes.draw do
  get '/search', to: 'heroines#index'
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
end
