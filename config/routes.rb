Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  resources :users, only: [:index, :show, :create, :update]
  resources :posts, only: [:index, :show, :new, :create]
  resources :hometowns, only: [:index, :show]
  resources :voice_actors, only: [:index] do
    resources :users
  end
  resources :favorite_voice_actors, only: [:index] do
    collection do
      get 'edit'
      patch 'update'
    end
    resources 'posts', only: [:index, :new, :create]
  end
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end