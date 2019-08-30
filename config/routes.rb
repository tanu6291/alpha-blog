Rails.application.routes.draw do

	# get 'pages/home', to:'pages#home'
	root'pages#home'

	# get 'pages/about', to: 'pages#about'
	get 'about', to: 'pages#about'

	resources :articles

	get 'signup', to: 'users#new'
	resources :users, except: [:new]
	# this gives the edit, create, update, show,index,delete article path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
