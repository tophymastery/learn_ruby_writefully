Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]

  resource :session, only: [:create]

  resource :confirmation

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
  get 'register' => 'users#new'

  resources :posts do
    resources :comments
  end

  root to: 'posts#index'
end
