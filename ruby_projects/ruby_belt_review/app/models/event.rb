class Event < ApplicationRecord
  belongs_to :host, class_name: :User
  has_many :attendees
  has_many :users, through: :attendees
  has_many :messages
end
