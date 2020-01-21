Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  resources :comments
  resources :posts
  resources :users
  get "/pages/:page" => "pages#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
