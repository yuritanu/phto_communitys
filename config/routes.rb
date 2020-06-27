Rails.application.routes.draw do
  devise_for :users
  root to:'tops#index'

  resources :photos, only: [:index]

  # カテゴリー関係
  resources :categories, only: [:new]
end
