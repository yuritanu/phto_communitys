Rails.application.routes.draw do
  devise_for :users
  root to:'tops#index'

  resources :tops, only: [:index, :show]
  resources :photos, only: [:index]

  # カテゴリー関係
  resources :categories, only: [:new]
end
