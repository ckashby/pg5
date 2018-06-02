Rails.application.routes.draw do
  get 'users/new'
  resources :posts
  root 'pages#index'
  get 'index', to: 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
