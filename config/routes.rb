Rails.application.routes.draw do
  devise_for :users
  root to = "prototypes#index"
  post 'prototypes/:id' => "prototypes#show"
  resources :prototypes, only:[:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
