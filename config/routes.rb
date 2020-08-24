Rails.application.routes.draw do
	resources :topics
	match '/index', to: 'topics#index',via: 'get'
  
end
