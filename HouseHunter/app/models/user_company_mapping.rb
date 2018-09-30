class UserCompanyMapping < ApplicationRecord
  belongs_to :users
  belongs_to :companies
end
