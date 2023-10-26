Rails.application.routes.draw do
  root to: "articles#index"
  resources :activations, only: [:edit]
  resources :articles do 
    resources :comments
  end
  resources :users
end
