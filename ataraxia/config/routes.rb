Rails.application.routes.draw do
	
	post 'users/create' => 'users#create'
	get 'users/new' => 'users#new'
	get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
