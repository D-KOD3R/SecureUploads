Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  devise_for :users

  resources :secure_files, only: [:index, :new, :create, :destroy]
  root "secure_files#index"


  #fetch from tiny url
   get '/s/:slug', to: 'tiny_urls#show', as: :short
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
