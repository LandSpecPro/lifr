class User < ActiveRecord::Base
  attr_accessible :login, :password

  # Validate numbers never go below 0
  validates :health, :numericality => { :greater_than_or_equal_to => 0 }
  
end
