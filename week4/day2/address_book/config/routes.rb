Rails.application.routes.draw do
	get '/', to: 'contacts#index'
	get '/new', to: 'contacts#new'
	post '/contacts', to: 'contacts#create'
end
