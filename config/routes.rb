Rails.application.routes.draw do
  get 'user/edit'
  get 'user/login'
  get 'user/new'
  get 'community/list'
  get 'community/edit'
  resources :hometown, only: [:index, :show]
  resources :voice_actors, only: [:index]
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
