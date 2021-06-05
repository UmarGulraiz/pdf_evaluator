Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  authenticated :user do
    root "user/dashboard#index", as: :user_root
    namespace :user do
      resources :dashboard, only: [:index]
    end
  end

  authenticated :admin do
    root "admin/dashboard#index", as: :admin_root
    namespace :admin do
      resources :dashboard, only: [:index]
      resources :scores do
        member do
          get :get_document
          post :update_document
        end
      end
    end
  end

  unauthenticated :user do
    root "home#index", as: :unauthenticated_root
  end

  unauthenticated :admin do
    root to: "home#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
