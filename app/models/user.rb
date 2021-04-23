class User < ActiveRecord::Base

    has_many :sneaker
    has_secure_password
    
   

end
