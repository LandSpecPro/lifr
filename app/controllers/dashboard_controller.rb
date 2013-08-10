class DashboardController < ApplicationController

	include DashboardHelper

	def main
		@indexactive = 'active'
		@dashactive = 'active'
		
		@hero = get_hero		
	end

	def activity
		@activityactive = 'active'

		@hero = get_hero
	end

end