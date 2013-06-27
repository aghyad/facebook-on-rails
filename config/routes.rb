Facebook::Application.routes.draw do
  
  get "users/index"
  get "users/show"
  devise_for :users, controllers: {registrations: "registrations"}
  
  root to: "home#index"
end
