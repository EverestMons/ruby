class User < ApplicationRecord
  has_many :posts
  has_many :messages
  validates :first_name, :last_name, :email_address, uniqueness: true
  has_many :owners
  has_many :blogs, through: :owners, source: :blog

end
