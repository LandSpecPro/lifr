class HomeController < ApplicationController

	# Home Page
	def index
		@indexactive = 'active'
	end

	# About Page
	def about
		@aboutactive = 'active'
	end

	# Contact PAge
	def contact
		@contactactive = 'active'
	end

end
