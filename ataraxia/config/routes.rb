Rails.application.routes.draw do
	
  get 'home/index'

	post 'users/create' => 'users#create'
	get 'users/new' => 'users#new'
	get 'users' => 'users#index'

	post 'properties/show' => 'properties#show'
	get 'properties/new' => 'properties#new'
	get 'properties' => 'properties#index'

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
