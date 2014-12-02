Stratevarius::Application.routes.draw do
 
	# scope 'api', defaults: {format: :json} do
	# 	resources :executives, only: [:index, :create, :update, :destroy]
	# 	resources :organizations, only: [:index, :create, :update, :destroy]
	# 	resources :relationships, only: [:index, :create, :update, :destroy]
	# end

	get 'signup', to: 'executives#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

	root 'home#index'

	resources :relationships

	resources :sessions

	get 'home/' => 'home#index', as: :home

	get 'executives/' => 'executives#index', as: :executives
	get 'executives/new' => 'executives#new', as: :new_executive
	get 'executives/:id' => 'executives#show', as: :executive
	post 'executives/' => 'executives#create', as: :create_executive
	get 'executives/:id/edit' => 'executives#edit', as: :edit_executive
	patch 'executives/:id' => 'executives#update', as: :update_executive
	delete 'executives/:id' => 'executives#destroy', as: :delete_executive

	get 'organizations/' => 'organizations#index', as: :organizations
	get 'organizations/new' => 'organizations#new', as: :new_organization
	get 'organizations/:id' => 'organizations#show', as: :organization
	post 'organizations/' => 'organizations#create', as: :create_organization
	get 'organizations/:id/edit' => 'organizations#edit', as: :edit_organization
	patch 'organizations/:id' => 'organizations#update', as: :update_organization
	delete 'organizations/:id' => 'organizations#destroy', as: :delete_organization

end
