Rails.application.routes.draw do
  devise_for :users
  root "questions#index"
  resources :vote, only: :create
  resources :questions, shallow: true, except: :index do
    resources :answers, only: [:create, :new, :destroy] do
      resources :comments, only: [:create, :new, :destroy]
    end
    resources :comments, only: [:create, :new, :destroy]
  end
end
