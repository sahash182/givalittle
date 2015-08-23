class User < ActiveRecord::Base
	has_many :charities
	has_secure_password

  validates :email,
      presence: true,
      uniqueness: true,
      format: {
        with: /@/,
        message: "not a valid format"
      }


	
end
