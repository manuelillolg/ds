Rails.application.routes.draw do
  resources :esculturas
  resources :manualidads
  resources :cuadros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
       resources :cuadros
       resources :esculturas
       resources :manualidads
    end
  end
end
