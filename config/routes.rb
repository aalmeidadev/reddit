Rails.application.routes.draw do
  put 'votes/update'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
