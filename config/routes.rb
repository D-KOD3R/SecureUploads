Rails.application.routes.draw do
  devise_for :users

  resources :secure_files, only: [:index, :new, :create, :destroy]
  root "secure_files#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
