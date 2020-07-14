Rails.application.routes.draw do
  devise_for :users
  root to:'tops#index'

  resources :tops, only: [:index] do
    get 'myp'
  end
  resources :photos, only: [:index, :new, :create, :show]
  
end
