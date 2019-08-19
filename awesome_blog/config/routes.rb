Rails.application.routes.draw do
	resources :quotes
	resources :posts
	root 'stats#appstats'
end
