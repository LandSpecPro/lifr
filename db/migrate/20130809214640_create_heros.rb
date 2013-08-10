class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|

    	t.string		:name, :null => false
    	t.string		:class_type, :null => false

    	t.integer		:level, :default => 1, :null => false
    	t.integer		:health_current, :default => 100, :null => false
    	t.integer		:health_max, :default => 100, :null => false
    	t.integer		:skill_points_current, :default => 0, :null => false
    	t.integer		:skill_points_total, :default => 0, :null => false
    	t.integer		:exp_current, :default => 0, :null => false
    	t.integer		:exp_total, :default => 0, :null => false
    	t.integer		:exp_to_next_level, :default => 1000, :null => false

        t.integer       :user_id, :null => false

    	t.timestamps
    end
  end
end
