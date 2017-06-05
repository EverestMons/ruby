class User < ApplicationRecord
  has_secure_password
  has_many :hosted_events, class_name: 'Event', foreign_key: :host_id
  has_many :attendees
  has_many :events, through: :attendees
  has_many :messages
end
