class User < ActiveRecord::Base

    has_many :sneakers
    has_secure_password
    validates_presence_of :username, :password
   

end
