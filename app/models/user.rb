class User < ActiveRecord::Base
# Users!  Pretty much used only for authentication.
#
# Users have the following fields:
#   name - The user's full human-friendly name
#   login - The user's login name
#   email - The user's email
#   crypted_password - Encrypted for your protection
#   password_salt - Salt! Tasty!

#   (The following are all managed by authlogic)

#   persistence_token - Used by authlogic for persisting the user's session.
#   single_access_token - Token that doesn't persist.  Good for API stuff.
#   perishable_token - Time-limited token.  Good for 'forgot my password'.
#   login_count - How many times they've logged in.
#   failed_login_count - How many times they've failed to log in.
#   last_request_at - When did they make their last transaction?
#   current_login_at - The user's current session started when?
#   last_login_at - When was the last successful login?
#   current_login_ip - IP address of the current login
#   last_login_ip - IP address of the last login

#   Plus, the obligatory timestamps.
  acts_as_authentic do |c|
    c.validate_email_field = false # Email validation is a fool's errand.
  end 

end
