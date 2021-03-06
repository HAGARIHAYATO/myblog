Rails.application.routes.draw do
  root 'articles#index'
  get '/admin' => 'articles#admin'
  get '/search' => 'articles#search'
  get '/about' => 'articles#about'
  devise_for :users
  resources :users
  resources :categories
  resources :articles do
  	resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
