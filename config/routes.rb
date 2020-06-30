Rails.application.routes.draw do
  devise_for :users
  root to:'tops#index'

  resources :tops, only: [:index, :show] do
    get 'myp'
  end
  resources :photos, only: [:index, :new]

  # カテゴリー関係
  resources :categories, only: [:new]
end
