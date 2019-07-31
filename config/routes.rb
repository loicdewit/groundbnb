Rails.application.routes.draw do
  resources :users do
    get 'signin'
    resources :listings
  end

  get "/users/signin" => "users#signin"

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
