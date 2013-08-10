class Hero < ActiveRecord::Base
	attr_accessible :name, :class_type, :user_id, :level, :health_current, :health_max, :skill_points_current, :skill_points_total, :exp_current, :exp_total, :exp_to_next_level, :user_id
	
	belongs_to :user
	
end
