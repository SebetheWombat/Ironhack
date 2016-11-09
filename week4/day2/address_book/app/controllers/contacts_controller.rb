class ContactsController < ApplicationController
	def index
		@contacts = Contact.all.order(name: "ASC")
		render :index
	end

	def new
		render :new
	end

	def create
		my_contact = Contact.new(
			name: params[:contact][:name],
			address: params[:contact][:address],
			phone: params[:contact][:phone],
			email: params[:contact][:email])
		my_contact.save
		redirect_to("/")
	end
end
