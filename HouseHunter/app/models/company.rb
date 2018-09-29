class Company < ApplicationRecord
  has_many :house
  validates :name, presence: true
  validates :website, presence: true
  validates :address, presence: true
  validates :founded, presence: true
  validates :size, presence: true

end
