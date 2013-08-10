class User < ActiveRecord::Base
    attr_accessible :crypted_password, :email, :password_salt, :persistence_token, :username, :password, :password_confirmation, :hero_attributes

	#Authlogic Authentication
	acts_as_authentic

	#Relations
	has_one :hero
	accepts_nested_attributes_for :hero

  	def self.find_by_username_or_email(login)
	  User.find_by_username(login) || User.find_by_email(login)
	end

end
