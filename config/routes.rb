Rails.application.routes.draw do
  resources :meals
  resources :customers
  resources :cooks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
