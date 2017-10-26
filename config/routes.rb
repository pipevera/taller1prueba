Rails.application.routes.draw do
	get 'pages/landing'
	post 'pages/save_user'

	root 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
