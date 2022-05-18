Rails.application.routes.draw do
  resources :suppliers do
    resource :account
  end
  resources :authors do
    resources :books
  end
  resources :demos
  root "authors#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
