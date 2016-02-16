class User < ActiveRecord::Base
	validates_presence_of :email, on: :create
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create

end
