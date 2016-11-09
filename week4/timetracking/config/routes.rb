Rails.application.routes.draw do
	get '/', to: 'site#home'
	get '/contact', to: 'site#contact'
	get '/say_name/:name', to: 'site#say_name'
	get '/calculate', to: 'calculate#add_form'
	post '/add', to: 'calculate#add' 
	get '/projects', to: 'projects#index'
	get '/projects/new', to: 'projects#new'
	post '/projects', to: 'projects#create'
	get '/projects/:id', to: 'projects#show', as: 'project'
	get '/projects/:project_id/time_entries', to: 'time_entries#index', as: 'project_time_entries'
end
