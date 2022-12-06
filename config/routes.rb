Rails.application.routes.draw do  
  resources :analytics
  devise_for :users
  
  resources :articles

  authenticated :user do
    root :to => 'articles#index', as: :authenticated_root
  end

  root "users#index"

end
