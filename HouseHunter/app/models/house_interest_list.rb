class HouseInterestList < ApplicationRecord
  belongs_to :user
  belongs_to :house
  belongs_to :company
  validates :user_id, uniqueness: { scope: :house_id,
                                 message: "Interested house is already added in the list" }
end
