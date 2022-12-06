Rails.application.routes.draw do  
  devise_for :users
  
  resources :users do 
    resources :analytics
  end
  resources :articles

  authenticated :user do
    root :to => 'analytics#index', as: :authenticated_root
  end

  root "users#index"

end
