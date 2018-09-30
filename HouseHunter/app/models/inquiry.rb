class Inquiry < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :house
end
