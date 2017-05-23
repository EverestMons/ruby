class User < ApplicationRecord
  has_secure_password
  has_many :friends, class_name: "User", foreign_key: "friendship_id"
  belongs_to :friendship, class_name: "User", optional: true
  has_many :teas
  has_many :comments

end
