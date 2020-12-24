Rails.application.routes.draw do
  devise_for :users
  resources :votes
  resources :posts

    root to: "posts#index"

    mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
