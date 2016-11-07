require 'artii/cli'
require 'artii/base'
require 'artii/figlet'

class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		a = Artii::Base.new
		@text = a.asciify(params[:ascii][:user_text])

		render 'ascii_results'
	end
end
