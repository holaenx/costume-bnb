Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  get "/users/:id", to: "application#custom", as: :user_id
  resources :costumes do
    resources :rents, only: [:create, :update, :new, :destroy]
  end
  resources :rents, only: :destroy
end
