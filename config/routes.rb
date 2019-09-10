Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :users
  resources :categories
  resources :articles
  resources :favorites
  resources :tags
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
