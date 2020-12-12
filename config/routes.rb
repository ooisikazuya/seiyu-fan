Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :create, :edit, :update]
  resources :posts, only: [:index, :show, :new, :create] 
  resources :hometowns, only: [:index, :show]
  resources :voice_actors, only: [:index] do
    resources :users
  end
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
