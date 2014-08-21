class User < ActiveRecord::Base
  has_secure_password validations: false

  #after_create :send_welcome_email

  #def send_welcome_email
    #UserMailer.welcome(self).deliver
  #end
end
