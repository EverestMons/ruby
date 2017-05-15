class Owner < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  has_many :blogs, through: :blogs
end
