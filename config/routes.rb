Rails.application.routes.draw do
  devise_for :users
  root "questions#index"
  resources :questions do
    resources :answer do
      resources :comment
    end
    resources :comment
  end

end
