class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence:true, length: {in: 2..20}
  validates :email, presence: true, format: {with: EMAIL_REGEX}
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
end
