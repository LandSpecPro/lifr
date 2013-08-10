class UserSessionsController < ApplicationController

	def create
		@user_session = UserSession.new(params[:user_session])
		if @user_session.save
			redirect_to dashboard_url
		else
			@indexactive = 'active'
			@user = User.new
			@logintab = 'active'
			render :template => 'home/index'
		end
	end

	def destroy
		current_user_session.destroy
		redirect_to root_url
	end
	
end