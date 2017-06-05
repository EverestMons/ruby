class User < ApplicationRecord
  has_secure_password
  has_many :songs
  has_many :adds, class_name:'Add', foreign_key: :user_id
end
