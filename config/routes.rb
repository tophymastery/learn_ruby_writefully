Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :auth do
    resources :users, only: [:create]
    resource :session, only: [:create]
    resource :confirmation, only: [:new]
  end

  namespace :my_admin do
    resources :posts

    root to: 'posts#index'
  end

  get 'login' => 'auth/sessions#new'
  delete 'logout' => 'auth/sessions#destroy'
  get 'register' => 'auth/users#new'

  resources :posts do
    resources :comments
  end

  root to: 'posts#index'
end
