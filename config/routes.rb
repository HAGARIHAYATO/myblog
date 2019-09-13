Rails.application.routes.draw do
  root 'articles#index'
  get '/admin' => 'articles#admin'
  devise_for :users
  resources :users
  resources :categories
  resources :articles
  resources :favorites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
