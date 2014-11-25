Stratevarius::Application.routes.draw do
 
	scope 'api', defaults: {format: :json} do
		resources :executives, only: [:index, :create, :update, :destroy]
		resources :organizations, only: [:index, :create, :update, :destroy]
		resources :relationships, only: [:index, :create, :update, :destroy]
		resources :sessions, only: [:index, :create, :destroy]
	end

	root 'application#index'

end
