Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'home#index'
	resources :destinations #, only: [:index, :show]

	resources :transportss #, only: [:index, :show]
  resources :travels #, only: [:index, :show]
  
end