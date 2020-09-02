Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index' 
  resources :tweets, only: [:new, :create, :show]
  get "root_path" => "tweets#show"
  # root to: 'words#index'
  # resources :words, only: [:index, :new, :create, :show]


end