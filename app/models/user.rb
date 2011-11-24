class User < ActiveRecord::Base
# Users!  Pretty much used only for authentication.
#
# Users have the following fields:
#   name - The user's full human-friendly name
#   email - The user's email
#   password_digest - Encrypted for your protection.

#   Plus, the obligatory timestamps.

  has_secure_password    

  validates :password, :presence => {:on => :create}

end
