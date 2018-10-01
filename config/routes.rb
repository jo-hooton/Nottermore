Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'static_pages#home'
  # static page for 'homepage'

  resources :houses, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :subjects, only: [:index, :show]


end
