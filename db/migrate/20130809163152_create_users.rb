class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string 	:login, :null => false
    	t.string 	:password, :null => false
    	
      t.timestamps
    end
  end
end


#t.integer	:level, :null => false, :default => 1
#    	t.integer 	:health_max, :null => false, :default => 100
#    	t.integer 	:health_max, :null => false, :default => 100
#    	t.integer	:exp_total, :null => false, :default => 0
#    	t.integer	:exp_current, :null => false, :default => 0
#    	t.integer	:exp_to_next_level, :null => false, :default => 1000
#    	t.integer	:skill_points, :null => false, :default => 0