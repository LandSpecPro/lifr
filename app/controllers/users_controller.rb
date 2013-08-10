class UsersController < ApplicationController

	def create

		@user = User.new(params[:user])

		if @user.save

			redirect_to 'http://www.landspecpro.com'

		else
			@indexactive = 'active'
			@user_session = UserSession.new
			@registertab = 'active'
			render :template => 'home/index'
			return
		end

	end

end