Rails.application.routes.draw do
  resources :drugs
  resources :prescriptions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
