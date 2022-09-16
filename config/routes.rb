Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  
  resources :posts
  resources :users, only: %i[show], param: :username
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
