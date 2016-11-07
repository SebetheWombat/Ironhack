class CalculateController < ApplicationController
	def add_form
		render 'add_form'
	end

	def add
		@n1 = params[:first_num].to_i
		@n2 = params[:second_num].to_i
		@sum = @n1 + @n2
		render 'results'
	end
end
