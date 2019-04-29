Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  # get 'users', to: 'users#index'
  # post '/users', to: 'users#create' 
  # get '/users/:id', to: 'users#show'
  # patch '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy' 

  resources :users, only: [:index, :create, :show, :update, :destory]
  get '/users/:artist_id/artworks', to: 'users#index'

  # get 'artworks', to: 'artworks#index'
  # post '/artworks', to: 'artworks#create'
  # get '/artworks/:id', to: 'artworks#show'
  # patch '/artworks/:id', to: 'artworks#update'
  # delete '/artworks/:id', to: 'artworks#destory'
  resources :artworks, only: [:create, :show, :update, :destory]

  resources :artwork_shares, only: [:create, :destroy]
  
end
