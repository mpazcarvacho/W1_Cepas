Rails.application.routes.draw do
  resources :assemblies
  resources :strains
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
