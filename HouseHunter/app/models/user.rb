class User < ApplicationRecord
  
  validates_uniqueness_of :email_address, presence: true
 # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
