class Message < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates  :message, uniqueness: true
end
