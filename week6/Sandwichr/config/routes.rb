Rails.application.routes.draw do
  devise_for :users
	root "site#home"	
	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
	  resources :ingredients, except: [:new, :edit]
	  resources :sandwiches, except: [:new, :edit]
	  post 'sandwiches/:id/ingredients/add', to: "sandwiches#add_ingredient"
	end
end
