class Add < ApplicationRecord
  belongs_to :user
  belongs_to :song
  has_many :users
end
