class User < ActiveRecord::Base
# Users!  Used for authentication, and also own posts.
#
# Users have the following fields:
#   name - The user's full human-friendly name
#   email - The user's email
#   password_digest - Encrypted for your protection.

#   Plus, the obligatory timestamps.

  has_secure_password    
  has_many :posts

  validates :password, :presence => {:on => :create}

end
