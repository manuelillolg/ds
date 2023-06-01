Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
 
  resources :users
  resources :esculturas
  resources :manualidads
  resources :cuadros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '', to: 'sessions#welcome', as: 'home'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout', as: 'logout'
 
    

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sessions#welcome'
  
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
       resources :cuadros
       resources :esculturas
       resources :manualidads
    end
  end
end
