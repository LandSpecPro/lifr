class HomeController < ApplicationController

	# Home Page
	def index
		if current_user
			redirect_to dashboard_url
			return
		else
			@indexactive = 'active'
			@logintab = 'active'
			@user = User.new
			@user_session = UserSession.new
		end
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
