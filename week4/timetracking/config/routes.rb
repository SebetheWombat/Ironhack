Rails.application.routes.draw do
	get '/', to: 'site#home'
	get '/contact', to: 'site#contact'
	get '/say_name/:name', to: 'site#say_name'
	get '/calculate', to: 'calculate#add_form'
	post '/add', to: 'calculate#add' 
end
