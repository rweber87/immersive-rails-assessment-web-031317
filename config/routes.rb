Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:new, :create, :show, :index]
  resources :episodes, only: [:index]
  resources :users, only: [:new, :create, :show]
  
 get '/users' => 'users#show'


end
