Rails.application.routes.draw do
  get 'home/index'

	# first creat a route, which will tell the rails application which file to run when a request comes a route
	root 'home#index'

	get 'page/expenses', to: 'home#expenses' #so whenever we type page/expense the request will come to home controller and expenses method which iwll then run the respective view file, where we can put our js code

	get 'page/categories', to: 'home#categories'

  resources :expenses
  resources :categories
  resources :accounts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end