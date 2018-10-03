Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'static_pages#home', as: 'welcome'
  # get '/', to: 'static_pages#home'
  # static page for 'homepage'

  resources :houses, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :subjects, only: [:index, :show]

  resources :students, only: [:show]
  get 'students/:id/sortinghat', to: 'students#get_sorted', as: "getsort"
  post 'students/:id/sortinghat', to: 'students#sorted', as: "sorted"


  resources :patronus, only: [:show]
  get 'students/:id/discoverpatronus', to: 'students#get_patronu', as: "getpatronu"
  post 'students/:id/discoverpatronus', to: 'students#post_patronu', as: "postpatronu"


  resources :lessons, only: [:new, :create]

  # create the user
  get "/signup", to: 'students#new', as: 'signup'
  post "/students", to: 'students#create'
  # from blog post says bobby https://medium.com/@ashleymcolletti/add-authentication-to-your-rails-app-with-bcrypt-a53917252159

  # session functionality
  get "/login",     to: 'sessions#new',     as: 'login'
  post "/sessions", to: "sessions#create",  as: 'sessions'
  post "/logout",   to: "sessions#destroy", as: 'logout'

end
