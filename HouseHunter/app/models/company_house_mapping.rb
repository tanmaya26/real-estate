class CompanyHouseMapping < ApplicationRecord
  belongs_to :company
  belongs_to :house
end
