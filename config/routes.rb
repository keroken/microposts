Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'signup', to: 'user#new'
  
  resources :users
end
