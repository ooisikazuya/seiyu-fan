Rails.application.routes.draw do
  resources :logins, only: [:new, :create, :destroy]
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :posts, only: [:index, :show, :new, :create] 
  resources :hometowns, only: [:index, :show]
  resources :voice_actors, only: [:index]
  resources :top, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
