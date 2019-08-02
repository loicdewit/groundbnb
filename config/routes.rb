Rails.application.routes.draw do
  get    '/login',             to: 'sessions#new'
  post   '/login',             to: 'sessions#create'
  delete '/logout',            to: 'sessions#destroy'

  get    '/view_all_listings', to: 'listings#show_all'

  resources :users do
    resources :listings
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
