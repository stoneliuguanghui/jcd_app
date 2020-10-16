Rails.application.routes.draw do
 
  get 'projects/index'
	resources :topics
	match '/index', to: 'topics#index',via: 'get'
  	match '/edit', to: 'topics#edit',via:'get'
  	resources :versions
  	resources :cases
  	resources :images
  	resources :projects
  	
end
