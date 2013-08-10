class HerosController < ApplicationController

	before_filter :require_user

	def new
		if current_user.hero.blank?
			@hero = current_user.build_hero
		else
			redirect_to dashboard_url
		end
	end

	def create
		@hero = current_user.build_hero(params[:hero])

		if @hero.save
			redirect_to dashboard_url
		else
			redirect_to home_url
		end
	end

	def view
		
	end

end