Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  resources :costumes do
    resources :rents, only: [:create, :update, :new]
  end
  resources :rents, only: :destroy
end
