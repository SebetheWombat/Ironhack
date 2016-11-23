class SessionsController < ApplicationController

	def new
		if session[:user_id]
			flash[:loggedIn] = "You're already logged in..."
			redirect_to "/"
		else
			render :new
		end
	end

	def create
		name_logic
		user_maybe = User.find_by(email: params[:email])
		#authenticate method comes from has_secure_password in model
		if user_maybe && user_maybe.authenticate(params[:password])
			flash[:success] = "You have logged in successfully."

			session[:user_id] = user_maybe.id
			redirect_to "/"
		else

			redirect_to "/login"
		end

	end

	def destroy
		session.clear
		#alternative----> session[:user_id] = nil
		redirect_to "/"
	end
end
