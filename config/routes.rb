Stratevarius::Application.routes.draw do
 
  get "sessions/new"
scope 'api', defaults: {format: :json} do
	resources :executives, only: [:index, :create, :update, :destroy]
	end

  root 'application#index'


end
