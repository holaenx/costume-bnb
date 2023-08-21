Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :costumes do
    resources :rents, only: [:create, :update, :new]
  end
  resources :rents, only: :destroy
end
