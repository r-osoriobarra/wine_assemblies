Rails.application.routes.draw do
  resources :strains
  resources :wines
  resources :blends

  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
