Rails.application.routes.draw do
  resources :games
  resources :libraries
  resources :users
  # resources :users, except: :show

  get '/', to: "application#home", as: "home"
  get '/login', to:"users#login_show", as: "login_show"
  post '/loggedin', to: "users#loggedin"
  # get '/users/:name', to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
