Rails.application.routes.draw do  
  devise_for :users
  
  resources :articles

  authenticated :user do
    root :to => 'articles#index', as: :authenticated_root
  end

  root "users#index"

end
