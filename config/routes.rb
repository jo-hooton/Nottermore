Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'static_pages#home'
  # static page for 'homepage'

  resources :houses, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :subjects, only: [:index, :show]

  resources :students, only: [:show, :new, :create]
  get 'students/:id/sortinghat', to: 'students#get_sorted', as: "getsort"
  post 'students/:id/sortinghat', to: 'students#sorted', as: "sorted"


  resources :patronus, only: [:show]
  get 'students/:id/discoverpatronus', to: 'students#get_patronu', as: "getpatronu"
  post 'students/:id/discoverpatronus', to: 'students#post_patronu', as: "postpatronu"

end
