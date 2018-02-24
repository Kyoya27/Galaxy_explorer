Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'planets#home'
	resources :destinations #, only: [:index, :show]
	resources :placetobes
	resources :transportss #, only: [:index, :show]
  resources :travels #, only: [:index, :show]
	resources :planets #, only: [:index, :show]
  resources :simulations #, only: [:index, :show]
  # map.simulation "finalResult", :controller => "simulation"


end
