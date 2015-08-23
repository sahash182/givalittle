class User < ActiveRecord::Base
	has_many :charities
	has_secure_password
	
end
