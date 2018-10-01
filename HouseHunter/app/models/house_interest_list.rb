class HouseInterestList < ApplicationRecord
  belongs_to :user
  belongs_to :house
  belongs_to :company
end
