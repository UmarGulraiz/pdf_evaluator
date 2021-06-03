Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: "user/dashboard#index"

  get '/admin', to: "admin#index"

  namespace :admin do
    resources :dashboard, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
