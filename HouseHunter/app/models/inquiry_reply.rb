class InquiryReply < ApplicationRecord
  belongs_to :user
  belongs_to :house
  belongs_to :inquiry
  belongs_to :company
end
