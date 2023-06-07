Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  resources :articles
  devise_for :users

end
