module DashboardHelper

	def get_hero
		if not current_user.hero.blank?
			@hero = current_user.hero
		elsif current_user.hero.blank?
			@hero = nil
		end
	end
	
end