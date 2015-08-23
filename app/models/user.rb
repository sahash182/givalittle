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



 has_attached_file :avatar,
                   :styles => { :medium => "150x150>", :thumb => "44x44>" },
                   :default_url => "http://cdn3.rd.io/user/no-user-image-square.jpg"

 validates_attachment :avatar, 
                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                      :size => { :in => 0..10000.kilobytes }


	
end
