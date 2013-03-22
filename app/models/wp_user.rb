class WpUser < ActiveRecord::Base
  attr_accessible :ID, :display_name, :user_activation_key, :user_email, :user_login, :user_nicename, :user_pass, :user_registered, :user_status, :user_url
end
