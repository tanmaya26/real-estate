class User < ApplicationRecord
  
  validates_uniqueness_of :user_name, presence: true
  validates :password, presence: true
  
  validates :email_address, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :preferred_contact_method, presence: true, inclusion: {in: %w(email text phone),
                                                                   message: "%{value} is not a valid preferred contact method"}
  validates :phone_number, presence: true, format: {with: /\d{3}-\d{3}-\d{4}/, message: "Phone"}
  
  validates :role_type,presence: true, inclusion: { in: %w(admin hunter realtor),
                                                    message: "%{value} is not a valid role type" }
end