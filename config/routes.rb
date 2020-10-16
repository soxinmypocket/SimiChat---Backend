Rails.application.routes.draw do
  resources :users, only: [:create]
  # get "/signup", to: "users#create"
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  patch "/profile", to: "users#profile"
  post "/google_login", to: "users#google_login"
end
