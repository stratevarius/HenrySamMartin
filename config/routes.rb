Stratevarius::Application.routes.draw do
 
scope 'api', defaults: {format: :json} do
	resources :executives, only: [:index, :create, :update, :destroy]
	end

  root 'application#index'


end
